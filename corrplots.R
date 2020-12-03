#install corrplot packages
install.packages("corrplot")
library(corrplot)

#import data

miRNA <- GSE120277_RNAseq_data

#corrplot
miRNA.cor=cor(miRNA[2:10])
corrplot(miRNA.cor)
