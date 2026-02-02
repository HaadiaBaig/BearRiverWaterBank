##Create 


#Install and load the packages needed
packages <- c("dataRetrieval","dplyr", 
              "ggplot2", "tidyr", "reshape2", "lubridate")

for (package in packages) {
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package) # Install the package if not found
  }
  library(package, character.only = TRUE) # Load the package
}

sites <- read.csv("Sites.csv")

data <- NULL

##############################################################
for(i in 1:nrow(sites)){
  siteNumber <- as.character(sites[i, "SiteNumber"])
  parameterCd <- "00060"
  #Download daily data for year 2000- 2024
  r <- readNWISdv(
    siteNumber, parameterCd,
    "1999-01-01", "2024-12-30")
  #Remove unnecessary columns
  r <- r[,-5]
  #Rename
  colnames(r)[4] <- "Discharge"
  
  #cfs to acft
  r$Vol <- r$`Discharge` *1.983
  r$year = year(r$Date)
  r$yday <- yday(r$Date)
  r$month <- month(r$Date)
  
  r <- r %>%
    mutate(wateryear = case_when(
      lubridate::month(Date) %in% 10:12 ~ year + 1,
      TRUE ~ year))
  
  d <- r %>%
    group_by(year, wateryear, month)%>%
    summarise(Volume = sum(Vol))
  
  d$Site <- as.character(sites[i,"Name"])
  data <- rbind(d, data)
}

data$year <- NULL
unique(data$Site)

d1 <- data %>%
  mutate(Season = case_when(
    month %in% 4:9 ~"Summer"))
d1[is.na(d1)] <- "Winter"

Seasonal_Sum <- d1 %>%
  group_by(Site, wateryear, Season) %>%
  summarise(Volume = sum(Volume))

Flows <- Seasonal_Sum

Flows$Type <- "Flow"

unique(Flows$Site)
####################################################
WB <- read.csv("WaterBudget.csv")
unique(WB$Variable)

colnames(WB)[2] <- "Site"

WB1 <- WB %>%
  filter(Basin == "Bear River")

WB1 <- WB1 %>%
  mutate(Site = case_when(
    Site == "Cache Valley" & State == "Utah" ~ "Cache Valley-UT",
    Site == "Cache Valley" & State == "Idaho" ~ "Cache Valley-ID",
    TRUE ~ Site  # Keep original value if no match
  ))

unique(WB1$Variable)

WB2 <- subset(WB1, Variable %in% c("Agriculture Depletions", 
                                   "Sub-Irrigated Surface Depletions", 
                                   "Incidental Depletions",
                                   "M&I Depletions", "Mineral Depletions"))

WB3 <-  WB2 %>%
  mutate (Balance = ifelse(Variable %in% c("Agriculture Depletions",
                                           "Sub-Irrigated Surface Depletions", "Incidental Depletions",
                                           "M&I Depletions", 
                                           "Mineral Depletions"), "Depletions", "In"))
WB4 <- WB3 %>%
  group_by(Site, wateryear)%>%
  summarise(Volume = sum(Value))

WB4$Type <- "Depletion"
WB4$Season <- "Summer"

unique(WB4$Site)
unique(Flows$Site)
##############################################################
WaterBudget <- rbind(Flows, WB4)

WaterBudget <- WaterBudget %>%
  filter(!Site %in% c("Brigham City", "Malad" ))

#Change names of stations to match the watershed names
WaterBudget <- WaterBudget %>%
  mutate(Site = case_when(
    Site == "Above Woodruff" ~ "Evanston",
    Site == "Randolph" ~ "Cokeville",
    Site == "BelowSmithsFork" ~ "Cokeville",
    Site == "WYID" ~ "Thomas Fork", 
    Site == "Pescadero" ~ "Bear Lake",
    Site == "Soda Springs" ~ "LowerID",
    Site == "Oneida" ~ "LowerID",
    Site == "Cache Valley-ID" ~ "LowerID",
    Site == "IDUT" ~ "LowerID",
    Site == "Collinston"~"Cache Valley-UT",
    Site == "BSF"~"Cache Valley-UT_L",
    Site == "LBR" ~"Cache Valley-UT_L", 
    Site == "Logan"~"Cache Valley-UT_L",
    Site == "Corrine"~"Tremonton",
    TRUE ~ Site # Keep other values as they are
  ))

WaterBudget <- subset(WaterBudget, wateryear > '2003')
WaterBudget <- subset(WaterBudget, wateryear < '2024')

WaterBudget <- WaterBudget %>%
  group_by(Site,Season, Type, wateryear)%>%
  summarise(Volume = sum(Volume))

Sites_loc  <- c("Evanston" = 1, "Cokeville" = "2", "Thomas Fork" = 3, "Bear Lake" = 4, 
                "LowerID"= 5, "Cache Valley-UT"=6, "Tremonton"=7)

WaterBudget <- WaterBudget %>%
  mutate(Loc = as.numeric(Sites_loc[Site]))

Seasonal <- pivot_wider(WaterBudget, names_from = wateryear, 
                                   values_from = Volume)
write.csv(Seasonal, "SeasonalFlows.csv")
