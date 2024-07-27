
#alt kume islemleri

data()


CO2
View(CO2)


?subset

names(CO2)

data_ <- CO2


d2 <-  subset(data_, subset =(uptake > 30 & Type == 'Quebec'))
d2
nrow(d2)

d3 <-  subset(data_, subset =(uptake > 30 & Type == 'Quebec'), select = c('Treatment', 'conc'))
d3
nrow(d3)


#ic ice sorgular yazma


d1 <- subset(data_, subset = ((Type == 'Quebec' | Treatment == 'nonchilled') 
                              & (uptake> 30 & uptake < 35)))
d1


#satir-sutun ortalama 

d1 <- rowMeans(iris[1:4])

iris['mean'] <- d1 
iris


iris['Sepal.mean'] <- rowMeans(iris[1:2]) 
iris


#sutun bazli 

colMeans(iris[1:4])

#gruplar bazinda hesaplama (kategorik )


setosa <- which(iris$Species == 'setosa')
versicolor <- which(iris$Species == 'versicolor')
virginica <- which(iris$Species == 'virginica')
setosa;virginica;versicolor

mean_setosa <- mean(iris[setosa, c('Sepal.Length')])
mean_versicolor <- mean(iris[versicolor, c('Sepal.Length')])
mean_virginica <- mean(iris[virginica, c('Sepal.Length')])

#kisa hali \\\ ortalama
aggregate(iris[1:4], by = list(iris$Species), FUN = mean)


#standart sapma 
aggregate(iris[1:4], by = list(iris$Species), FUN = sd)

#toplama
aggregate(iris[1:4], by = list(iris$Species), FUN = sum)


aggregate(iris[1:4], by = list(iris$Species), FUN = mean, na.rm = T)
