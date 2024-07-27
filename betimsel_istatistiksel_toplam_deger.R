
c <- c(23,45,67,43,56)

#gozlem sayisi N, n

length(c)

# toplama 
sum(c)

# ortalama 

ort <-  sum(c) / length(c)
ort
mean(c)

#serbestlik derecesi 

#Gozlem sayisinin 1 eksigi = (N-1)


# 5 degerden olusan bir degiskenin ortalamasi  20 dir bu durumda biz 5 degerden 4 unu istedigim seklinde secebilirz
# ama 5. degeri zorunlu olarak kalandir yani diyelimki 1. <- 10, 2. <- 2, 3. <- 3, 4. <- 6 olursa 5. deger 79 olmak zorunda cunku digerlerine verdikten sonra 5. degeri secemeyiz 

#standard sapma 

c <-  c(12,34,56,34,23,45)
?sd()
mean(34)
sd(c)


# varyans 

x <-  c(12,14,10,11,13,17,16)

length(x)

sd(x)
mean(x)
sd(x)**2 # varyans ort. sapma orani 
var(x)





x <-  c(12,25,60,56,35,24,45)
length(x)

sd(x)
mean(x)

vary <-  var(x)
vary



# medyan -aciklik-ceyreklik 


c <-  c(12,34,56,23,34,12,35)

median(c)
mean(c)


#aciklik

max(c) - min(c)
range(c) # E buyuk ve en kucuk u verir

r <-  range(c)
r[2] - r[1]

#ceyreklik 

quantile(c)
quantile(c, props = c(0.25, 0.5, 0.75))
quantile(c, props = c(0.10, 0.6, 0.95))


#Carpiklik katsayisi 


c <- c(12,13,14,15,16,100,120)

c
mean(c) #normal dagilim 
median(c) #arada aykiri degerler varsa medyan kullanimi daha dogru olur tercihi cogunkuktan yana kullanicaksak 


y <-  c(12,15,17,18,20,24,26)

mean(y)
median(y)

#ikisi yakin 


hist(y)
hist(c)

install.packages('e1071')
library(e1071)

skewness(c)



z <- c(1,2,3,4,60,70,70,80,90,100)

hist(z)

skewness(z)


#Frekans bir verideki tekrar sayisidir 

x <- c(12,12,13,13,14,14,13,12,12,15,15,16)
length(x)


unique(x) #tekrarlari cikar 
table(x) #frekans(tekrar) 
names(table(x))

t <- table(x)
t[1] # frekans tablosundaki 1. sutun 
t[[1]] #icindeki elemana erisiyoruz
t['12'] # 
class(t['12'])
t[['12']] # tekrar sayisisina erisiyoruz

class(t)

#Kayıp gözlemlerin hesaplamalara etkisi


x <-  c(12,13,14,15,NA)
sum(x)

sum(x, na.rm = T)
mean(x)
mean(x, na.rm = T)


sd(x)

sd(x, na.rm = T)


is.na(x)

which(is.na(x)) #hangi degerler NA


any(is.na(x)) #NA iceren degerler var demek 
mean(x, na.rm = any(is.na(x)))
n <- which(is.na(x))

x[n] = 0
x

x <-  c(12,13,14,15,NA)


x[is.na(x)] = 0
x



# Normal Dağılan Veriler
r <- rnorm(100)

#direk boyle calisinca s.sapma 1 ort. 0 alinir
length(r)
hist(r, )



x <- rnorm(30, mean=10, sd=3)
hist(x)


#example
data <- round(rnorm(100))
avrg <- sum(data) / length(data)
sd_ <- sd(data)
mean_ <- mean(data)
quantile(data , probs = c(0.25 , 0.75))

res <-sd_ - mean_
res
