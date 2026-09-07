library(lubridate)
library(dplyr)
library(reshape2)
library(ggplot2)
library(tidyr)
library(readr)

data <- NULL

EastCanal <- read_csv("EastCanal.csv")

EastCanal$Volume <- EastCanal$Flow*1.983
EastCanal$Date <- NULL
EastCanal$Flow <- NULL

EastCanal <- EastCanal %>%
  group_by(wateryear, month)%>%
  summarise(Volume = sum(Volume))

EastCanal$Site <- "EastCanal"

data <- rbind(data, EastCanal)

####
WestCanal <- read_csv("WestCanal.csv")

WestCanal$Volume <- WestCanal$Flow*1.983
WestCanal$Date <- NULL
WestCanal$Flow <- NULL

WestCanal <- WestCanal %>%
  group_by(wateryear, month)%>%
  summarise(Volume = sum(Volume))

WestCanal$Site <- "WestCanal"

data <- rbind(data, WestCanal)

######################################

#Coll <- read.csv("Collinston.csv")

#Coll$Volume <- Coll$Flow*1.983
#Coll$Date <- NULL
#Coll$Flow <- NULL

#Coll <- Coll %>%
  #group_by(wateryear, month)%>%
 # summarise(Volume = sum(Volume))

#Coll$Site <- "Collinston"

#data <- rbind(data, Coll)
###################################################################
d <- subset(data, wateryear > '2003')
d <- subset(d, wateryear < '2026')

d <- d %>%
  mutate(Season = case_when(
    month %in% 5:9 ~"Summer"))
d[is.na(d)] <- "Winter"

Seasonal_Sum <- d %>%
  group_by(wateryear, Season) %>%
  summarise(vol = sum(Volume))

Seasonal <- dcast(Seasonal_Sum, Season~ wateryear, 
                  value.var = "vol")

write.csv(Seasonal, "BRCC_Seasonal.csv")
