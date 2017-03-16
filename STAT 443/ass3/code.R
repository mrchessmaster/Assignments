acma = read.table("Acma.TXT")
acma <- ts(acma)
plot(acma, xlab = "Month", ylab = "Level")

acf(acma)
pacf(acma)

acma_d = diff(acma)
plot(acma_d)
acf(acma_d)
pacf(acma_d)

mod = arima(acma, order = c(1,0,0))
mod$sigma2

sum(acma_d^2)/length(acma_d)
var(acma_d)
sum(var(acma_d))/length(acma_d)

acma

3.17+1.64*l*0.04066

# 1e)
qnorm(0.05,mean = 0,sd = 1)
qnorm(0.95,mean = 0,sd = 1)




### q2:

dfr = read.csv("dataFraserRiver.csv")
dfr <- dfr[-1]
dat = c()
for (i in 1:99) {
  dat <- c(dat,dfr[i,])
}
dat <- as.numeric(dat)
dat <- data.frame(dat)
dat <- ts(dat)

flow = window(dat, start = 78*12+1, end = 97*12)
flow.test = window(dat, start = 97*12+1)

plot(flow)
acf(flow)
pacf(flow)

mod1 = arima(flow, order = c(1,0,0), seasonal = list(order=c(0,1,0), period = 12))
mod2 = arima(flow, order = c(1,0,0), seasonal = list(order=c(1,1,0), period = 12))
mod3 = arima(flow, order = c(0,0,0), seasonal = list(order=c(1,1,0), period = 12))
mod4 = arima(flow, order = c(2,0,0), seasonal = list(order=c(1,1,0), period = 12))

tsdiag(mod1)
tsdiag(mod2)
tsdiag(mod3)




flow_d = diff(flow, lag = 12)
plot(flow_d)
acf(flow_d)
pacf(flow_d)


library(forecast)
auto.arima(flow)
?auto.arima



## model is AR(1) with alpha = 0.6

# Xt = 0.6Xt-1 + Zt

mod = mod2

pred = predict(mod, 24)

plot(pred$pred, col = "red")
lines(flow.test, col = "blue")

sqrt(mean(pred$pred - flow.test)^2)

sum((flow.test > pred$pred-qnorm(0.975)*pred$se) & (flow.test < pred$pred+qnorm(0.975)*pred$se))
# 22/24 values in 95% confidence interval



