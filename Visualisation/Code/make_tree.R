rm(list=ls())
setwd("Results/")
library(ape)

#load matrix
Matrix <- read.csv("matrix.csv", header = T)

#neighbour-joining
stree = nj(dist.gene(Matrix))
#change tip labels to characters in the first column of the matrix
stree$tip.label <- as.character(Matrix[,1])

#open png file
png("tree.png",800,500)
#plot tree
plot(stree)
#save to file
dev.off()
