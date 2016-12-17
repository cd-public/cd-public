# Creating a Graph
info <-read.csv("out.out")
attach(info)
plot(forward_start, backward_start)
title("Scatterplot of Forward and Backward Interval Startpoints")
pdf("graph.pdf")
