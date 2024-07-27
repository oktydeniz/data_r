

d = data.frame('a' = c(1,2,3,4,5), 'b' = c('A', 'B', 'C', 'D', 'E'))
d
d[1,2]
d[1,1]

d[,1]
d[2,]

class(d[,2])
class(d[2,])

d2 <- data.frame('A' = c(12,13,14,15,16),
                 'B' = c('A', 'B', 'C', 'D', 'E'),
                 'C' = c(45,23,67,89, 24))

d2

class(d2[,c(2,3)])

d2[2] #data frame
d2['A'] #data frame
d2[['A']]#vektor
d2[,1] #vektor

d2$A #vektor

d2[c('A', 'B')]

df <- data.frame('A' = c(12,13,14,15,16),
                 'B' = c('A', 'B', 'C', 'D', 'E'),
                 'C' = c(45,23,67,89, 24))

df[-2]
df[,-1]


df[2] <- NULL
df['A'] <- NULL 
df

df[-c(1,3)]


df[,-c(1,3)]

df[-3] #df

df[c('A', 'B')] <- NULL
df

df[-1,]
df

df[-c(2:5),]

df[-c(1,4),]

df[1,2]
df[1,2] <- 20
df

df[2,2] <- 21
df


df[3:4,c(2,3)] <- 0
df


df[c(3,4),3] <- 1
df



df[1, c(1,2)] <- c(1,1)
df




df[c(3,4),1] = c(1,0)
df




df <- data.frame('A' = c(12,13,14,15,16),
                 'B' = c('A', 'B', 'C', 'D', 'E'),
                 'C' = c(45,23,67,89, 24))


df <- cbind(df, 'D'=  c(33,44,55,66,77))
df

df[4]
df[5] <-  c(12,13,14,15)
df$B

df$New <-  c(1,2,3,4,5)
df


df['New 2'] <-  c(9,7,6,4,3)
df

df[6, ] <-  c(1,2,3,4,5,6) 
df[7,] <- c(1,'CC', 2,3,4,5) 
df


rbind(df, data.frame('A' = c(1), 'B' = c('B'), 'C' = c(1), 'D' = c(1),
                     'New' = c(1), 'New 2' = c(1)))

df

rbind(df, data.frame('A' = c(1,2), 'B' = c('B','C'), 'C' = c(1,1), 'D' = c(1,0),
                     'New' = c(1,0), 'New 2' = c(1,1)))


dd = data.frame('A' = c(1,2), 'B' = c('B','C'), 'C' = c(1,1), 'D' = c(1,0),
           'New' = c(1,0), 'New 2' = c(1,1))
dd
           