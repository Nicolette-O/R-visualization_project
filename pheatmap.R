
#install packages
install.packages("pheatmap")
install.packages("readxl")

#imort data
library(readxl)
GSE120277_RNAseq_data <- read_excel("file directory", 
    sheet = "microRNA")
View(GSE120277_RNAseq_data)

#convert to numeric scale
miRNA <- GSE120277_RNAseq_data[2:10]
miRNAheat <-scale(miRNA)

#convert to matrix
miRNAheat <- as.matrix(miRNA)

library(pheatmap) 

#plot pheatmap heatmap
pheatmap(miRNAheat, scale = "row")
