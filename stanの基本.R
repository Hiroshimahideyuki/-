#stanファイルの基本事項と分析の基本


install.packages('rstan',repos='http://cloud.r-project.org/',dependencies = TRUE)

library(rstan)

#計算の高速化
rstan_options(auto_write=TRUE)
options(mc.cores=parallel::detectCores())

#分析対処のデータ
file_beer_sales_1<-read.csv("2-4-1-beer-sales-1.csv")
head(2-4-1-beer-sales-1.csv,n=3)

#データの確認
head(file_beer_sales_1,n=3)

#サンプルサイズ
sample_size<-nrow(file_beer_sales_1)
sample_size

#listにまとめる
data_list<-list(sales=file_beer_sales_1$sales, N=sample_size)
data_list

#mcmcの実行
mcmc_result<-stan(
  file="2-4-1-calc-mean-variance.stan", #stanファイル
  data=data_list, #対象データ
  seed=1, #乱数の種
  chains=4, #チェーン数
  iter=2000, #乱数生成の繰り返し数
  warmup=1000, #バーンイン期間
  thin=1 #間引き数(1なら間引き無し)
)

#結果の表示
print(
  mcmc_result, #MCMCサンプリングの結果
  probs=c(0.025,0.5,0.975) #中央値と95%信用区間を出力
)

#トレースプロット(バーンイン期間なし)
traceplot(mcmc_result)

#トレースプロット期間
traceplot(mcmc_result,inc_warmup=T)



