library(ggplot2)

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species))
+ geom_point() 
+labs(title = "散布図")
