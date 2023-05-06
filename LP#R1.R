options(scipen=999) #지수 없애기
df<- read.csv("/Users/unixking/Desktop/choi/LP#R1.csv", header = T)


for (i in df['t']){
  print(dnorm(i, mean = 10, sd = 1))
}

