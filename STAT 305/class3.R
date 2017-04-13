year = seq(2004,2013)
y = c(25,26,20,20,23,18,23,22,15,16)

mod = glm(y~year, family = "poisson")

summary(mod)


# for worksheet 9.4
x = year - mean(year)
n = length(y)

# beta0 = 3.03
# beta1 = -0.04
# ll = -sum(exp(beta0+beta1*x))+ beta0*sum(y)+beta1*sum(x*y) - sum(log(factorial(y)))
# ll0 = -exp(beta0)*sum(exp(beta1*x)) + sum(y)
# ll1 = -exp(beta0)*sum(x*exp(beta1*x)) + sum(x*y)
# ll0
# ll1

beta0 = seq(3,3.05,0.01)
beta1 = seq(-0.05, 0.03, 0.001)
for (b0 in beta0) {
  for (b1 in beta1) {
    ll0 = -exp(b0)*sum(exp(b1*x)) + sum(y)
    ll1 = -exp(b0)*sum(x*exp(b1*x)) + sum(x*y)
    if (ll0 < 1 && ll0 > -1 && ll1 < 1 && ll1 > -1) {
      print(b0)
      print(b1)
    }
  }
}

b0 = 3.03
b1 = -0.042
mu = b0 + b1*x

fishermatrix = matrix(c(exp(b0)*sum(exp(b1*x)),exp(b0)*sum(x*exp(b1)),exp(b0)*sum(x*exp(b1)),exp(b0)*sum(x^2*exp(b1*x))),nrow = 2,ncol = 2)
fishermatrix

varmat = solve(fishermatrix)
seb1 = sqrt(varmat[2,2])
seb1

teststat = abs(b1 / seb1)
teststat


