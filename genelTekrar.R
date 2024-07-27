x <-  c(1,2,3,4)
l = list(1,2,3, c(11,22,33))
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), 3,4)
df <- data.frame('a'= c(1,2,3,4),
                 'b'= c('a','b','c','d'),
                 'c' = c(11,22,33,44))


# vektor eleman secimi 
x[1]

# vektor eleman cikarma
x[-1]

# vektor eleman ekleme

x[5] <- 14


# list eleman secimi 

l[1]
l[[1]]
l[[4]][1]


# liste eleman cikarma

l[1] <- NULL
l[[2]] <- NULL


#liste eleman ekleme

l[3] <- 5
l[[4]] <- 5


#matris eleman secme 

m[1,2]

# matris eleman cikarma 

m[,-2]
m[-1,]

#matrislere eleman ekleme 

cbind(m, c(1,2,3))
rbind(m, c(1,2,3,4))


# kaydetmek icin tekrar atama 

m <- cbind(m, c(1,2,3))
m <-  rbind(m, c(1,2,3,4))

# Data frame Eleman secimi 

df[1,1]
df[2,1]


# data frame satir sutun cikarma 

df[-1]
df[,-1]# eger iki sutun varsa virgullu cikarma yapilamaz. Cunku elimde 1 sutun kalir oda vektor olur

df[1] <- NULL
df[,-1] <- NULL


df <- data.frame('a'= c(1,2,3,4),
                 'b'= c('a','b','c','d'),
                 'c' = c(11,22,33,44))


df[-1,]
df[-2,]
df <- df[-2,] # tekrar atama yapilmasi gerek kaydetmek icin 
df

# data frame deger degistirme 


df[1,1] 
df[1,1] <- 144
df

#satir sutun ekleme d. frame

df[4] <-  c(1,2,3)
df
cbind(df, 'F' = c(1,2,3))
cbind(df, data.frame('A1' = c(1,2,3)))
rbind(df, data.frame('a' = c(1), 'b' = c('D'), 'c' = c(12), 'V4' = c(1)))


