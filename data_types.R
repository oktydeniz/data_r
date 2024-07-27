
#x = c(1,2,3,4,5)

#z <- c(20,23,24,20)


l1 = list(13, 34, 45)
l2 = list('A', 23, 'B', 23)

l3 <-list(c(10,20), "A", 12)
l4 = list(a= c(1,2,3), b = "AA")


x <- c(10,20,40)
y <- c('A', 'B', 'C')

z <- c(11,22,33)

frame <- data.frame(x,y,z)
View(frame)

t <- c(1,2,3,4,5)
e <- c('A', 'B', 'C', 'D', 'E')
fr <- data.frame('T variable' = t, 'E variable' = e)

View(fr)
data_ = data.frame(c(1,2,3,4,5),
                   c(34,45,67,89,45),
                   c(12,34,45,32,45))

View(data_)


data2_ = data.frame('a' = c(1,2,3,4,5),
                   'b' = c(34,45,67,89,45),
                   'c' = c(12,34,45,32,45))
View(data2_)


data3_ = data.frame(a = c(1,2,3,4,5),
                    b = c(34,45,67,89,45),
                    c = c(12,34,45,32,45))
View(data3_)

data4_ = data.frame(a = c(1,2,3,4,5),
                    b = c(34,45,67,89,45),
                    c = c(12,34,45,32,45))
View(data4_)



#matris
x = c(1,2,3,4)
c = matrix(x,nrow = 2, ncol=2)
c = matrix(x,nrow = 2, ncol=2, byrow = TRUE)



y = c(1,2,3,4,5,6,7, 8)

matrix(y, nrow = 2, ncol=4)

matrix(x, nrow = 4 , ncol=2)
matrix(x, nrow = 4 , ncol=4)

matrix(x, nrow = 4 , ncol=4, byrow = TRUE)

matrix(x, nrow = 5 , ncol=5) #error










