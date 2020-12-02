#install packages

install.packages("pheatmap")
miRNAheat <- as.matrix(miRNA)

library(pheatmap) 

#plot heatmap
pheatmap(miRNAheat, scale = "row")
