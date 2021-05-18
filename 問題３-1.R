library(ggplot2)

p_box <- ggplot (data = iris, mapping = aes(x = Species, y =Sepal.Width))+ geom_boxplot() + labs(title = "箱ひげ図")

p_box