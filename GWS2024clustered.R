library(stats)

data <- read.csv("ResponsesGWS.csv")

satisfaction <- data[, 2:28]
gameplay <- data[, -(1:29)]

# Perform k-means with 3 clusters and 20 random starts
satisfaction_kmeans_model <- kmeans(satisfaction, centers = 2, nstart = 20)
gameplay_kmeans_model <- kmeans(gameplay, centers = 3, nstart = 20)

# Look at the output of kmeans_model
summary(satisfaction_kmeans_model)
summary(gameplay_kmeans_model)


satisfaction_assignments <- satisfaction_kmeans_model$cluster
gameplay_assignments <- gameplay_kmeans_model$cluster
data$cluster_sat <- satisfaction_assignments
data$cluster_game <- gameplay_assignments


# Summary statistics for each cluster
sat_summary_mean <- aggregate(data, by = list(cluster = satisfaction_assignments), mean)
game_summary_mean <- aggregate(data, by = list(cluster = gameplay_assignments), mean)

#get cluster data
sat_data <- data[, c(1, which(colnames(data) == "cluster_sat"))]
game_data <- data[, c(1, which(colnames(data) == "cluster_game"))]

#export
write.csv(sat_data, file = "GWS_sat_data.csv")
write.csv(game_data, file = "GWS_game_data.csv")

write.csv(sat_summary_mean, file = "GWS_sat_mean.csv")
write.csv(game_summary_mean, file = "GWS_game_mmean.csv")
