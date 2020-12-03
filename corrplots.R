#install corrplot packages
install.packages("corrplot")
library(corrplot)

#import data and rename data
library(readxl)
GSE120277_RNAseq_data <- read_excel("excel file directory", 
    sheet = "microRNA")
View(GSE120277_RNAseq_data)

miRNA <- GSE120277_RNAseq_data

#corrplot
miRNA.cor=cor(miRNA[2:10])
corrplot(miRNA.cor)
