#Immersive Modeling of Bear River Water Bank

#This code creates a boxplot indicating the prices that collaborators 
#set for buying or selling water during immsersive modeling sessions

#Last Updated : 10-17-2026
#Last Updated by: Hadia Akbar

#List of pacakges requried
packages <- c("dplyr","ggplot2")

#Install the required packages they are not already isntalled
install <- packages[!(packages %in% installed.packages()[, "Package"])]
if (length(install)) {
  install.packages(install)}

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Read the data from "Price.csv"
data <- read.csv("Pricing.csv", header = TRUE, stringsAsFactors = FALSE)

data <- data %>% filter(!is.na(Price), Price > 0)

data$User <- factor(data$User,
                    levels = c("Upper UT/WY", "Lower ID", "Cache Valley", "Lower UT"))

# Define custom colors for Agricultural User transactions
colors <- c(
  "Upper UT/WY" = "#1f77b4",  "Lower ID" = "#2ca02c",  
  "Cache Valley" = "#aec7e8", "Lower UT" = "#ff7f0e"
)

# Count number of data points in each group
offsets <- c("Cache Valley" = 550,
             "Lower ID"     = 600,
             "Lower UT"     = 500,
             "Upper UT/WY"  = -750)

count_data <- data %>%
  group_by(User) %>%
  summarise(
    n = n(),
    y_pos = max(Price, na.rm = TRUE))%>%
  mutate(y_pos = y_pos + unname(offsets[as.character(User)]))

# Create a box plot
plot <- ggplot(data, aes(x = User, y = Price, fill = User)) +
  geom_boxplot(outlier.color = "red", outlier.shape = 16, outlier.size = 5) +
  geom_text(
    data = count_data,
    aes(x = User, y = y_pos, label = paste0("n = ", n)),
    inherit.aes = FALSE,
    size = 8,
    fontface = "bold") +
  labs(
    x = "",
    y = "Price ($/acft)"
    ) +
  scale_fill_manual(values = colors) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(size = 25, face = "bold"),
    axis.text.y = element_text(size = 25, face = "bold"),
    axis.title.x = element_text(size = 25, face = "bold"),
    axis.title.y = element_text(size = 25, face = "bold"),
    legend.position = "none"
  )
plot

ggsave("Pricing.tiff", plot, width = 14 ,height = 8, dpi = 1200)

