library(ggplot2) #ggplot2のパッケージの読み込み

p_box <- ggplot (data = iris, mapping = aes(x = Species, y =Sepal.Width)) #x軸, y軸の設定
+ geom_boxplot()　#箱ひげ図
+ labs(title = "箱ひげ図")　#名称付け

p_box　#箱ひげ図を表示
