library(stats)

data <- read.csv("20240103_Player Data - Inventory All_player.csv")

data_without_first_column <- data[, -1]

# Perform k-means with 3 clusters and 20 random starts
kmeans_model <- kmeans(data_without_first_column, centers = 5, nstart = 20)

# Look at the output of kmeans_model
summary(kmeans_model)

cluster_assignments <- kmeans_model$cluster
data$cluster <- cluster_assignments

# Summary statistics for each cluster
data_summary_mean <- aggregate(data, by = list(cluster = cluster_assignments), mean)



