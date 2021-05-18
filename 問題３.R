library(ggplot2) #ggplot2のパッケージの読み込み

p_box <- ggplot (data = iris, mapping = aes(x = Species, y =Sepal.Width))+ geom_boxplot() + labs(title = "箱ひげ図")

p_box　#箱ひげ図を表示
