
library(dataRetrieval)
library(lubridate)
library(dplyr)
library(readr)


#Download daily data water year 2000- 2025
data <- readNWISdv(  "10010000", "62614",
  "1980-01-01", "2023-12-30")

#Remove unnecessary columns
r <- data[,-c(1,2,5)]

#Rename
colnames(r)[2] <- "LakeLevel(ft)"

write.csv(r, "GSLHistorical.csv")

monthly <- r %>%
  mutate(Date = as.Date(Date)) %>%
  arrange(Date) %>%
  group_by(
    Year = year(Date),
    Month = month(Date)
  ) %>%
  slice_min(Date, n = 1, with_ties = FALSE) %>%
  ungroup() %>%
  select(Date, `LakeLevel(ft)`)

write.csv(monthly, "GSLHistMonthly.csv")


# Keep only October 1st lake levels
Oct_levels <- r %>%
  mutate(Date = as.Date(Date)) %>%
  filter(month(Date) == 10, day(Date) == 1) %>%
  arrange(Date) %>%
  select(Date, `LakeLevel(ft)`)

write.csv(Oct_levels, "GSL_Oct.csv")
