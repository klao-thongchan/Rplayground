library(stats)
library(dendextend)

data <- read.csv("ResponsesGWS.csv")
data_without_firstcolumn <- data[, -1]
satisfaction_data <- data[, 2:28]
gameplay_data <- data[, -(1:29)]

dist_matrix <- dist(gameplay_data)
hclust_model <- hclust(dist_matrix)

dend <- as.dendrogram(hclust_model)
plot(dend)
