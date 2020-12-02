#import RNAseq data
GSE120277_RNAseq_data 

#conver to numerical and scale
miRNA <- GSE120277_RNAseq_data[2:10]
miRNAheat <-scale(miRNA)

#plot heatmap
heatmap(miRNAheat, scale = "row")
