x <- c(4,6,8,11,13,15)
t = list(x)

df_t = as.data.frame(t)
names(df_t)[1] <- c("t")
print(df_t)

#---------------------------------------------------------------------------

ft = list()
for (i in df_t['t']) {
  ft = (4.0 / 10) * (i / 10) **(4.0 - 1.0) * exp( -(i/10) ** 4.0)
}

df_ft = as.data.frame(ft)
names(df_ft)[1] <- c("f(t)")

df = cbind(df_t, round(df_ft,6))  #두 데이터 프레임 합치기
print(df)

plot(df[['t']], ft, type = "b", main = "f(t) Graph", xlab = "t", ylab = "f(t)")


#---------------------------------------------------------------------------

Ft = list()
for (i in df_t['t']) {
  Ft = (1 - exp(-(i/10) ** 4.0))
}

df_Ft = as.data.frame(Ft)
names(df_ft)[1] <- c("F(t)")

df = cbind(df, round(df_Ft,6))  #두 데이터 프레임 합치기
print(df)

plot(df[['t']], Ft, type = "b", main = "F(t) Graph", xlab = "t", ylab = "F(t)")

#---------------------------------------------------------------------------

Rt = 1 - Ft
df_Rt = as.data.frame(Rt)
names(df_Rt)[1] <- c("R(t)")

df = cbind(df, round(df_Rt,6))  #두 데이터 프레임 합치기
print(df)

plot(df[['t']], Rt, type = "b", main = "R(t) Graph", xlab = "t", ylab = "R(t)")

#---------------------------------------------------------------------------

lt = ft / Rt
df_lt = as.data.frame(lt)
names(df_lt)[1] <- c("l(t)")

df = cbind(df, round(df_lt,2))  #두 데이터 프레임 합치기
print(df)

plot(x = df[['t']], y =lt, type = "b", main = "l(t) Graph", xlab = "t", ylab = "l(t)")



