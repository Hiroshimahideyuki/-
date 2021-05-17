library(tidyverse)
library(ggplot2)

data_frame <- data.frame(
  col1 = 1:100,
  col2 = rnorm(n = 100, mean = 0, sd = 1)
)



ggplot(data_frame, aes(x = col1, y = col2)) + geom_line()
