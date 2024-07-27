
data <- singapore

#manuel 

#read.csv('Destop/singapore.csv', header = TRUE, sep = ";", dec = ".")


#getwd()
#setwd() - chance pwd
#list.files() - dizindeki dosyalar


# iki tabloyu birlestirme
?merge
newData <- merge(Demografik, Transactions, by.x = "ID", by.y = "CUSTOMER_ID" )
View(newData)


names(newData)
names(Transactions)[2] <- "ID"
names(Transactions)


newData <- merge(Demografik, Transactions, by = "ID")
View(newData)



#Betimsel dataFrame bilgilerini alma

View(iris)


summary(iris)
View(summary(iris))


str(iris) # degiskenleri alip turlerini kontol ediyor.



head(iris) # ilk 6 

iris[10:15, ] # 10 -15 arasi satirlar


?head

head(iris, n = 10) 
tail(iris, n = 15) # son gozlemleri gosterir


# degisken istatistikleri 

View(singapore)

mean(singapore$price)

any(is.na(singapore$price)) # null deger var mi baktik 

mean(singapore$price, na.rm = T)


sd(singapore$price, na.rm = T)


# bu yukarfaki iki ornekde mean 168 gelirken ss 340 gelmis bu ise bize veri hakkinda sunu soylyor
# bizim verilerimiz icinde dagilim cok uclarda olabilir yani cok dusuk ya da yuksuk verileri icerebilir 
# o nedenke ss ortalamadan baya sapmis 


median(singapore$price, na.rm = T)

# median degeri ortalamdan kucukse verilerimiz saga carpik demekti.
# bu saga carpiklik dagilim da verilerin daha cok kucuk degerlerde yogunlastigini 
# gosteriyordu grafikte sol tarafta yogunuk var bunu gorsel olarak gormek icin 
hist(singapore$price)
#veriyi inceledigimizde gorselde gozuktugu gibi veriler genellikle 0-1000 arasinda dagilmis 


hist(singapore$price[singapore$price < 1000])
# bu sekilde bir fitreleme yapildigi zaman goruldugu gibi veriler saga carpik bir dagilim gostermis 


# ss 
sd(singapore$price, na.rm = T)

#varyans -- ss karesi 
var(singapore$price, na.rm = T)


min(singapore$price, na.rm = T)
max(singapore$price, na.rm = T)

# min -max degerler arasinda devasa bir fark var 

#frekasn degerleri ->  tekrarlama sikligi ust satir degerleri alt satir kac kere tekrar ettigini gosteriyor.


table(singapore$room_type)


# veri setinden room type 110 esit olani cikarmak istiyorum

which(singapore$room_type == "110")
singapore <- singapore[-964,]

table(singapore$room_type)
levels(singapore$room_type)

# kayip gozlemleri cikarmak

which(singapore$room_type == '')
df <- singapore[-which(singapore$room_type == ''),]
df


table(df$room_type)




quantile(singapore$price, na.rm = T)
#verilerin ceyreklere bolerek dagilimlarini gosteriyor mesela ciktisi 

"
  0%   25%   50%   75%  100% 
    0    65   124   199 10000 

"
# ilk %25 lik sette verilerin 65 i bu tarafta dagilmis demek bu 124 tanrdi ilk %50 icinde 
# 75% kisimda da 199 gozlem var bu ne demek dikkat edilirse ilk 74% lik dagilimda veri 200 e kadar gitmis ve birden 10000 cikmis 

# 75% oraninda veriler 0-200 arasinda, 50% 0-124 arasinda, 25% oraninda da veriler 0-65 arasinda demek oluyor


#Degıskn turleri 

library(readxl)
singapore <- read.csv("Desktop/oktay/r/data-sets/CSV__singapore.csv")
View(singapore)

class(singapore$name)

singapore$name <- as.character(singapore$name)

singapore["name"]
class(singapore["name"])
#hatalı kullanım tur data.frame ise dönusum saglıklı olmaz 
as.character(singapore["name"])


singapore[,c("name")]
class(singapore[,c("name")])

singapore[,c("name")] <- as.factor(singapore[,c("name")])
class(singapore[,c("name")])


singapore[,c("name")] <- as.character(singapore[,c("name")])
class(singapore[,c("name")])


singapore[,c("name")] <- as.factor(singapore[,c("name")])
class(singapore[,c("name")])

# özel durum faktor den numeric e direk çevirince onların yani değerlerin seviyesini elde ederiz değerin kendisini değil bu nedenle 
# once karakter sonra faktor donusumu olmalı 
singapore[,c("id")] <- as.factor(singapore[,c("id")])
class(singapore[,c("id")])

singapore$id <- as.integer(singapore$id)
class(singapore$id)

singapore <- read.csv("Desktop/oktay/r/data-sets/CSV__singapore.csv")
singapore[,c("id")]

#dogru kullanım 


singapore$id <- as.character(singapore$id)
class(singapore$id)

singapore$id <- as.numeric(singapore$id)
class(singapore$id)

singapore$id <- as.integer(singapore$id)
any(is.na(singapore$id))


class(singapore$host_id)


class(singapore$room_type)
table(singapore$host_name)

indx <- which(singapore$room_type == ''| singapore$room_type == '110' | singapore$room_type == '1200' | singapore$room_type == '294' | 
        singapore$room_type == '31' |  singapore$room_type == '40' |  singapore$room_type == '50' |  singapore$room_type == '60' |
        singapore$room_type == '74' |  singapore$room_type == '75' |  singapore$room_type == '750')

singapore <- singapore[-indx,]
table(singapore$room_type)


# Apply fonksiyon grupları 


View(iris)

#1 -> satır 2 -> sutunar bazında ıslem yapar 
apply(iris[1:4], 1, FUN = mean) 


iris[1, 1:4]
class(iris[1, 1:4])
mean(as.numeric(iris[1, 1:4]))

apply(iris[1:4], 1, FUN = sd) 
sd(as.numeric(iris[1, 1:4]))

apply(iris[1:4], 1, FUN = sum) 

apply(iris[1:4], 2, FUN = sd) 

apply(iris[1:4], 2, FUN = sum) 

apply(iris[1:4], 2, FUN = max) 
apply(iris[1:4], 2, FUN = min) 


lapply(iris, FUN = mean) #listeler üzerinde çalışır satırlar bzında işlem yapmayız dataframe de her bir değişken üzerinde işlem yapar 


l <- list('a' =  c(13,14,54,65,76,34,98,76,43),
          'b' =  c(14,65,34,21,90,87,55,98,77),
          'c' =  c(54,76,86,32,45,12,90,33,12)) 

lapply(l, mean)

lapply(l, sd)
lapply(l, max)

#with kullnımı


# 
df <- read.csv("Desktop/oktay/r/data-sets/CSV__singapore.csv")
names(df)
df$id
df["id"]
attach(df) # değişken isimlerini vektör olarak dışarı çıkarır
host_name
id
host_id
class(host_id)
detach(df) #geri alma işlemi
host_id #not found alınır 


with(df, print(host_name))
with(df, {
  x <- mean(price, na.rm = T)
  y <- x-5
  print(y)
  })



#Ornek 
df <- read.csv("Desktop/oktay/r/data-sets/WomenFootballResults.csv")

df$date <- as.Date(df$date, format = '%Y-%m-%d')
class(df$date)
names(df)

filtered_columns <- subset(df, df$date >= as.Date('1980-12-01') &
         df$date <= as.Date('2019-12-31') &
         df$home_team == 'Hong Kong' &
         df$away_team == 'Philippines')
filtered_columns

selected_columns <- filtered_columns[c("date", "home_score", "away_score", "home_team", "away_team")]
selected_columns

