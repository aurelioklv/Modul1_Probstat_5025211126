#SOAL NO 1

p <- 0.2     #peluang sukses
n <- 3       #banyaknya percobaan gagal

#1a
dgeom(n, p)

#1b
n <- 10000
set.seed(0)
mean(rgeom(n, p) == 3)

#1c
#Perbandingan hasil poin a dan b (Readme.md)

#1d
n <- 3
set.seed(0)
hist(rgeom(n, p))

#1e
mean <- 1 / p
variance <- (1 - p)/(p^2)
mean        #rataan
variance    #varian

#SOAL NO 2

p <- 0.2
k <- 4
n <- 20

#2a
dbinom(k, n, p)

#2b
set.seed(0)
hist(rbinom(k, n, p))

#2c
mean <- n * p
variance <- n * p * (1 - p)
mean        #rataan
variance    #varian

#SOAL NO 3

lambda <- 4.5
k <- 6

#3a
dpois(k, lambda)

#3b
n <- 365
set.seed(0)
hist(rpois(n, lambda))

#3c
#Perbandingan hasil poin a dan b (Readme.md)

#3d
variance <- mean <- lambda
mean        #rataan
variance    #varian

#SOAL NO 4

x <- 2
v <- 10

#4a
dchisq(x, v)

#4b
n <- 100
set.seed(0)
hist(rchisq(n, v))

#4c
mean <- v
variance <- 2 * v
mean        #rataan
variance    #varian

#SOAL NO 5

lambda <- 3

#5a
dexp(2, lambda)

#5b
set.seed(1)
hist(rexp(10, lambda), main = "Histogram Exponential 10 bilangan random")
hist(rexp(100, lambda), main = "Histogram Exponential 100 bilangan random")
hist(rexp(1000, lambda), main = "Histogram Exponential 1000 bilangan random")
hist(rexp(10000, lambda), main = "Histogram Exponential 10000 bilangan random")

#5c
mean <- 1/lambda
variance <- 1/(lambda^2)
mean        #rataan
variance    #varian

#SOAL NO 6

n <- 100
mean <- 50
sd <- 8

#6a
set.seed(0)
data <- rnorm(n, mean, sd)

sorted_data <- sort(data)

x1 <- x2 <- mean(data)

for(index in 1:100){
    if(sorted_data[index]<=mean(data) && mean(data)<=sorted_data[index+1]){
       x1 <- sorted_data[index]
       x2 <- sorted_data[index+1]
       break
    }
}

sorted_data
summary(data)

x1
mean(data)
x2

prob <- pnorm(x2, mean(data), sd(data)) - pnorm(x1, mean(data), sd(data))
prob    #P(X1 <= x <= X2)

z_scores <- (data - mean(data))/sd(data)
z_scores    #Z-Score

plot(data, main = "Random Data berdistribusi normal")

#6b
breaks <- 50
hist(data, breaks, main = "5025211126_Aurelio Killian Lexi Verrill_Probstat_A_DNhistogram")

#6c
var(data)   #variansi distribusi normal


