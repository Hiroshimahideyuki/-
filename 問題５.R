install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

fish <- read.csv("fish.csv")
head(fish, n = 3)

ggplot(data = fish, mapping = aes(x = length)) + geom_histogram(alpha = 0.5, bins = 20) +labs(title = "ヒストグラム")

ggplot(data = fish, mapping = aes(x = length)) + geom_density(size = 1.5) +labs(title = "カーネル密度推定")

ggplot(data = fish, mapping = aes(x = length, y = ..density..)) + geom_histogram(alpha = 0.5, bins = 20) + geom_density(size = 1.5) + labs(title = "グラフの重ね合わせ")