
df <- data.frame('A' = c(12,14,15,16,17),
                 'B' = c(12,17,67,54,34),
                 'C' = c(12,17,67,54,34))
df


length(df$A) #gozlem sayisi

nrow(df) #gozlem sayisi satir

length(df)

ncol(df) #sutun sayisi. 

d <- dim(df) # satir sutun 

d

df <- data.frame('A' = rnorm(100, mean = 10, sd=2),
                 'B' = rnorm(100, mean = 34, sd=10),
                 'C' = rnorm(100, mean = 45, sd=15))

View(df)


idx <- which(df$A < 8)


 
# a nin 8 den kucuk olan alt kumesi
df[idx,]
df[idx, c(2,3)] #indexler, sutunlar

df[idx, c('B','C')]

df2 <- df[idx, c('B','C')]

df2
class(df)


df



idx <- which(df$B < mean(df$B))
idx
df[idx, c('B')]
df[mean(df$B),]


View(df[mean(df$B),])
