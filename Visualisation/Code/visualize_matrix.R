#rm(list=ls())
setwd("./Results/")
library(ggplot2)
library(tidyr)

#read data, format data for heatmap
Matrix <- read.csv("matrix.csv", header=T)
Matrix.long <- gather(data = Matrix, key = Gene, value = Present, -X)

#open png
png("matrix.png",800,500)
#create heatmap
ggplot(data=Matrix.long, mapping=aes(x=Gene, y=X, fill = Present)) +
  geom_tile(color = "white") + theme(axis.text.x=element_text(angle=90)) +
  xlab("Gene") + ylab("Species") + scale_fill_gradient2(low = "yellow", high = "red")
#save to png
dev.off()
