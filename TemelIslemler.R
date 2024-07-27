x  <- 5 
y <- 15 

#karekok 

sqrt(y)


#vektorlerde islemler 


x <-  c(3,54,67,43,35)


x + 5
x- 5

x /5
x * 5
x **2
x **3
y = x *5
y

x1 <-  c(13,24,35, 56)
x2 <-  c(12,23, 20) 
x1 + x2

#eksik verilerde uyari mesaji almamak icin kisa olan uzun olanin kati olmasi daha iyi olacaktir. 

x2 + x1
x1 * x2

length(x1) 

x2 <-  c('A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D',
         'A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D','A',
         'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D',
         'A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D','A', 'B', 'C', 'D')
length(x2) 
x2[length(x2)]
x2[length(x2)-1]

x1 <-  c(13,24,35,23, 56,54,65,87,09,54,88,23,67,234,5454,7657,93485,9048543,1,0.1)
min(x1)
max(x1)

(min(x1) + max(x1)) / max(x1)
min(x1) + max(x1) / max(x1)


x1 == 13

index = which(x1 == 23)


x1[index] 

x1[x1 == 23]

x1 > 23
x1 < 1
x1 <= 2
x1 >= 20

x1 != 23

x1[x1 == 23]

x1[(x1 < 100)]

x <- x1
which(x < 90)
which(x > 100)


x[which(x< 100)]
x[which(x< 70)]



f <-  which(x > 100)
f

x[f]


1:23
-5:13

seq(10)
seq(-12,50)

x <- seq(-4,5)
x <- seq(from= 0, to=10)
x

df <- data.frame('A' = c(1,2,3,4,5),
                 'B' = c(34,35,35,34,12))
df

df[-3, ]

df <- df[-3, ]






len <-  length(df$A)

len

row.names(df) #"1" "2" "4" "5" 
row.names(df) <- seq(1:4)
df


x <-  seq(from = 100, to = 300, by= 10)
x
x <- sample(x)
x
sample(x, replace = TRUE) # karistir ve ayni degerio tekrar kullanabilirsin 




#orneklem alma


x <- seq(10, 200, length.out= 50)
x

sample(x)

#rasgele 1 eleamn alma


ss <- sample(x, size = 1)
ss


set.seed(165)
sample(x, size = 1)

set.seed(175)
sample(x, size = 1)

#Bu soru yine sorulmuştu. Soru cevap kısmında ilgili dersin soru-cevaplarını 
#inceleyebilirsiniz. Kısaca burda yazdığımız 
#165'in bir anlamı yok aslında. Sadece rastgeleliği 165'e sabitliyoruz.
#Artık set.seed(165) ve ardından sample fonksiyonunu çalıştırdıktan sonra yine aynı
#örnekler rastgele olarak seçilmiş olacak. Örneğin 155 yaparsanız farklı örnerkler 
#seçilir. Bunu daha iyi anlamak için sample fonksiyonu set.seed olmadan her 
#çalıştırdığınızda hep farklı sonuçlar alırsınız. Fakat sample fonksiyonunu her 
#çalıştırmadan önce set.seed(165) kodunu çalıştırırsanız hep aynı sonuçları alırsınız.
#165'i değiştirdiğinizde bu sefer farklı örnekler almış olursunuz.  
#Ayrıca, rastgeleliği sabitlemek artık rastgelelik olmayacak anlamına gelmiyor kesinlikle.
#Sayıları veya örnekleri yine rastgele alıyoruz ama belirli bir sayı sabitinde.
set.seed(165)
sample(x, size=90, replace=TRUE)


rep(4, 100)

x <- c(1,2,3,4,5,6)
rep(x, 20)

rep(x, each=2) # 1 1 2 2 3 3 4 4 5 5 6 6
v <- rep(x, each=5)
v
length(v)

s <- sample(v)
s

x <- c(12,34,12,4,5,45,22,67,34)
x

sort(x)
sort(x, decreasing = T)


c <- c('osman', 'ahmet', 'mehmet', 'berk')
c
sort(c)
sort(c, decreasing = T)

c <- c(12,34,12,4,5,45,22,67,34, NA,NA) 
c
sort(c)
sort(c, decreasing = T, na.last = NA) #67 45 34 34 22 12 12  5  4
sort(c, decreasing = T, na.last = T) #67 45 34 34 22 12 12  5  4 NA NA
sort(c, decreasing = T, na.last = F) #NA NA 67 45 34 34 22 12 12  5  4

s <-  sort(c, decreasing = T, na.last = T, index.return = T)
s

class(s)

s[['x']] #values
s[['ix']] #index

s[['x']][1]


x <-  seq(from = 20, to = 300, length.out= 200 )
length(x)
newX <- sample(x, 50)
newX <- newX[which(newX > 100)]
newX <- sort(newX, decreasing = TRUE, na.last = TRUE, index.return = TRUE)
newX
