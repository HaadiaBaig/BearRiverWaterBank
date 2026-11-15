#Immersive Modeling of Bear River Water Bank

#This code creates a heat map showing the themes identified in strategies
#adopted by collaborators during immsersive modeling sessions

#Last Updated : 10-16-2026
#Last Updated by: Hadia Akbar

#List of pacakges requried
packages <- c("reshape2", "ggplot2")

#Install the required packages they are not already isntalled
install <- packages[!(packages %in% installed.packages()[, "Package"])]
if (length(install)) {
  install.packages(install)}

#Load the required libraries
library(ggplot2)
library(reshape2)

data <- read_csv("Strategies.csv")

data$Users <- factor(data$Users,
                    levels = c("Upper UT/WY", "Lower ID", "Cache Valley", "Lower UT"))

# Reshape data for ggplot
melted <- melt(data, 
               id.vars = c("Users"),
                variable.name = "Stakeholder",
                value.name = "Frequency")

# Create heatmap
heatmap <- ggplot(melted, aes(x = Users, y = Stakeholder, fill = Frequency)) +
  geom_tile() +
  scale_fill_gradient(low = "lightblue", high = "darkblue", name = "Frequency of Each Theme in Strategies") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, size = 13, face = "bold"),
    axis.text.y = element_text(size = 13, face = "bold"),
    axis.title = element_text(size = 14, face = "bold"), # Format axis titles
    panel.grid = element_blank(),
    legend.position = "none",
    legend.title = element_text(size = 14),
    legend.text = element_text(size = 12),
    plot.margin = margin(20, 20, 20, 20)
  ) +
  coord_fixed(ratio = 0.5) +
  labs(
    #title = "Strategies by Stakeholder Group",
    x = "",            # Add x-axis title
    y = ""          # Add y-axis title
  ) +
  # Add text annotations for values
  geom_text(aes(label = Frequency), color = "white", size = 6, fontface = "bold")

# Print the heatmap
heatmap

# Save the plot
ggsave("StartingStrategies.tiff", heatmap, width = 8, height = 5, dpi = 600)

