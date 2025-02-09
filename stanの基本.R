#stan$B%U%!%$%k$N4pK\;v9`$HJ,@O$N4pK\(B


install.packages('rstan',repos='http://cloud.r-project.org/',dependencies = TRUE)

library(rstan)

#$B7W;;$N9bB.2=(B
rstan_options(auto_write=TRUE)
options(mc.cores=parallel::detectCores())

#$BJ,@OBP=h$N%G!<%?(B
file_beer_sales_1<-read.csv("2-4-1-beer-sales-1.csv")
head(2-4-1-beer-sales-1.csv,n=3)

#$B%G!<%?$N3NG'(B
head(file_beer_sales_1,n=3)

#$B%5%s%W%k%5%$%:(B
sample_size<-nrow(file_beer_sales_1)
sample_size

#list$B$K$^$H$a$k(B
data_list<-list(sales=file_beer_sales_1$sales, N=sample_size)
data_list

#mcmc$B$N<B9T(B
mcmc_result<-stan(
  file="2-4-1-calc-mean-variance.stan", #stan$B%U%!%$%k(B
  data=data_list, #$BBP>]%G!<%?(B
  seed=1, #$BMp?t$N<o(B
  chains=4, #$B%A%'!<%s?t(B
  iter=2000, #$BMp?t@8@.$N7+$jJV$7?t(B
  warmup=1000, #$B%P!<%s%$%s4|4V(B
  thin=1 #$B4V0z$-?t(B(1$B$J$i4V0z$-L5$7(B)
)

#$B7k2L$NI=<((B
print(
  mcmc_result, #MCMC$B%5%s%W%j%s%0$N7k2L(B
  probs=c(0.025,0.5,0.975) #$BCf1{CM$H(B95%$B?.MQ6h4V$r=PNO(B
)

#$B%H%l!<%9%W%m%C%H(B($B%P!<%s%$%s4|4V$J$7(B)
traceplot(mcmc_result)

#$B%H%l!<%9%W%m%C%H4|4V(B
traceplot(mcmc_result,inc_warmup=T)



