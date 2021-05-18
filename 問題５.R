library(ggplot2)

fish <- read.csv("fish.csv")　#fishデータの読み込み



ggplot(data = fish, mapping = aes(x = length, y = ..density..)) #density=密度
+ geom_histogram(alpha = 0.5, bins = 20) 　#alpha=色の濃さ,　bins=ヒストグラムの階級
+ geom_density(size = 1.5) #size=線の太さ
+ labs(title = "データの重ね合わせ")
