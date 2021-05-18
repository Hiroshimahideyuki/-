library(ggplot2)

data_frame <- data.frame(　#データの格納
  col1 = 1:100,　#
  col2 = rnorm(n = 100, mean = 0, sd = 1) #乱数を作成,n=個数, mean=平均, sd=標準偏差
)



ggplot(data_frame, aes(x = col1, y = col2)) + geom_line()　#折れ線グラフ
