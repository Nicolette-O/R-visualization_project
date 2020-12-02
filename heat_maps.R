#import RNAseq data
library(readxl)
GSE120277_RNAseq_data <- read_excel("excel file directory", 
    sheet = "microRNA")
View(GSE120277_RNAseq_data)

#convert to numerical and scale
miRNA <- GSE120277_RNAseq_data[2:10]
miRNAheat <-scale(miRNA)

#plot heatmap
heatmap(miRNAheat, scale = "row")
