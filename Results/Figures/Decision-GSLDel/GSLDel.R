#List of pacakges requried
packages <- c("dplyr","ggplot2", "tidyverse", "readr")

#Install the required packages they are not already isntalled
install <- packages[!(packages %in% installed.packages()[, "Package"])]
if (length(install)) {
  install.packages(install)}

library(tidyverse)
library(reshape2)
library(dplyr)
library(readr)

data <- read_csv("Bank.csv",
               col_types = cols(.default = col_character())) |>   # read everything as text
  filter(grepl("^Session", Session)) |>                           # drops the blank-Session units row
  mutate(across(-Session, parse_number)) |>                       # text -> numbers
  rename(
    budget       = `Bank Budget`,
    total_spent  = `Bank Total Spent`,
    spent_per_yr = `Bank Average Spent per year`,
    deliv_per_yr = `Average delivered to GSL per year`
  ) |>
  filter(!is.na(budget)) |>                                       # Session 1 has no budget
  arrange(budget, Session) |>                                     # sort by budget, ties by session
  mutate(pos = row_number())                                      # unique x position for tied budgets

# Delivery (1,000 ac-ft) is rescaled to share the left axis with spending ($M)
k <- max(data$total_spent) / max(data$deliv_per_yr)

bars <- data |>
  select(pos, `Total spent` = total_spent, `Average spent per year` = spent_per_yr) |>
  pivot_longer(-pos, names_to = "measure", values_to = "value")


#creaer a plot
plot <- ggplot() +
  geom_col(data = bars, aes(pos, value, fill = measure),
           position = position_dodge(width = 0.8), width = 0.75) +
  geom_line(data = data, aes(pos, deliv_per_yr * k, color = "Avg delivered to GSL per year"),
            linewidth = 1) +
  geom_point(data = data, aes(pos, deliv_per_yr * k, color = "Avg delivered to GSL per year"),
             size = 2.5) +
  scale_x_continuous(breaks = data$pos,
                     labels = scales::dollar(data$budget, accuracy = 1)) +
  scale_y_continuous(
    name = "Bank spent (million $)",
    labels = scales::dollar,
    sec.axis = sec_axis(~ . / k, name = "Delivered to GSL per year (1,000 ac-ft)")
  ) +
  scale_fill_manual(values = c("Total spent" = "#1B6B2A",
                               "Average spent per year" = "#155E80")) +
  scale_color_manual(values = c("Avg delivered to GSL per year" = "#E8601C")) +
  labs(
    #title = " Summary",
       x = "Bank budget (million $)", fill = NULL, color = NULL) +
  theme_minimal() +
  theme(plot.title      = element_text(size = 24, face = "bold", hjust = 0.5),
        axis.title      = element_text(size = 20),
        axis.text       = element_text(size = 16),
        legend.text     = element_text(size = 16),
        legend.position = "top",
        panel.grid.minor = element_blank()
        )

plot

ggsave("bank_summary.tiff", plot, width = 14, height = 8, dpi = 1200)
