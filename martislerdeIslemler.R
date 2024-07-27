
#Martis
list1 = c(1,2,3,4,5,6,7,8)
c <- matrix(data = list1,nrow=2,ncol = 4)
c

m1 = matrix(c(12,22,34,56,76,55,65,66), nrow = 2, ncol = 4)
m1
m1[,1]
m1[2,]
m1[1,2]
m1[2,5]

class(m1[c(1,2), c(1,3)])
m1[1:2, 2:4]

m = matrix(c(12,22,34,56,76,55,65,66), nrow = 2, ncol = 4, byrow = T)
m[,2]
m[,-2]

m <- m[,-2]
m

x <- matrix(c(11,22,33,44,55,66,77,88), 4, 2, T)
x
x  <- x[-3,]
x
x[-c(2,3),]


x[-c(2:4),]

x[2,2] <- NA
x[c(1,2), 1] <- NA
x

x[2,2] <- 123
x

a <-  matrix(c(1,2,3,4), 2,2,T)
a

a <- cbind(m,c(1,2))
rbind(m, c(34,45,65,767))


