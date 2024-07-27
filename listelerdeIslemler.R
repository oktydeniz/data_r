l = list(1,2,3,4,5,6)

x = list(c(1,2,3), 'A', 'B')

x = list(11,12,13,c('A','B','C'))
x[3]
class(x[4])
class(x[[4]])

x[[4]][2]

x[[4]][1]

y = list(a = c(1,2,3,4), 'b' = c(11,22,33,44))
names(y)

y
y['a']
class(y['a'])

y[['a']]
class(y[['a']])
y$a
y$b

class(y$a)
class(y$b)


x <- list(1,2,3,c(1,2,3))
x[[1]] <- NULL
x

x[[4]][-1]
x[[4]] <- x[[4]][-1]
x


x <- list(c(1,2,3), 'A', 'B')
x
x[[1]] <-NULL
x
x[[1]] <- x[[1]][-1]
x


y <- list('A' = c(1,2,3), 'B' = 2)

y$A <- NULL
y
a = list(1,2,3,4)
a[[2]] <- NULL
a = a[-1]
a
x =list('A','B', 'C', 12,13, c(11,12,13,14))
x

x[[2]] <- 'DD'
x[2] <- 'D'
x

x[[6]][4] <- 0
x


x = list(11,12,13)

x[[2]] = 15

x[4] = 12
x
x[5] = 34
x[[6]] = 35
x



x[[7]] <- c(1,2,3,4,5)
x



x[8] <- c(1,2,3,4,5) #warning just take first element than means x[8] = 1 
x[[8]] <- c(1,2,3,4)
x
x[[10]] <- 12
x
