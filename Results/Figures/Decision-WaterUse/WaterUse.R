#Immersive Modeling of Bear River Water Bank

#This code creates a heat map showing the themes identified in the decisions
#adopted by collaborators during immsersive modeling sessions

#Last Updated : 10/13/2026
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

# Create data frame with themes and stakeholder importance ratings
data <- data.frame(
  Decision = c("Use all", "Use,sell", "Use,conserve", "Use,sell,conserve"),
  StatusQuo  = c(3,6,1,1),
  Hedging     = c(8,3,0,0),
  Economics = c(3,5,1,0),
  SocialReason = c(5,1,3,1))

# Reshape data for ggplot
melted <- melt(data, 
               id.vars = c("Decision"),
                variable.name = "Reason",
                value.name = "Frequency")

# Create heatmap
heatmap <- ggplot(melted, aes(x = Reason, y = Decision, fill = Frequency)) +
  geom_tile() +
  scale_fill_gradient(low = "lightblue", high = "darkblue", name = "Frequency of Each Theme in Strategies") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, size = 13, face = "bold"),
    axis.text.y = element_text(size = 13, face = "bold"),
    axis.title = element_text(size = 14, face = "bold"), # Format axis titles
    panel.grid = element_blank(),
    legend.position = "none", # Move legend to the top
    legend.title = element_text(size = 14),
    legend.text = element_text(size = 12),
    plot.margin = margin(20, 20, 20, 20)
  ) +
  coord_fixed(ratio = 0.5) +
  labs(
    x = "Reasoning",            # Add x-axis title
    y = "Decisions"          # Add y-axis title
  ) +
  # Add text annotations for values
  geom_text(aes(label = Frequency), color = "white", size = 6, fontface = "bold")

# Print the heatmap
heatmap

# Save the plot
ggsave("StartingStrategies.tiff", heatmap, width = 8, height = 5, dpi = 600)

