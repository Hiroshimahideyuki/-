library(ggplot2)

fish <- read.csv("fish.csv")



ggplot(data = fish, mapping = aes(x = length, y = ..density..)) + geom_histogram(alpha = 0.5, bins = 20) + geom_density(size = 1.5) + labs(title = "データの重ね合わせ")
