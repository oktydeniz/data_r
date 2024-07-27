d <- seq(from = as.Date('2012/01/01'),
         to= as.Date('2020/01/01'),
         by='month')

x <- c(1,2,3,4)

d > '2012/05/01'
d > '2012-05-01'
d > '05-01-2012' # siralama ayni olmali gun-ay-yil > gun-ay-yil gibi

d[d > '2019/05/01']

d[d < as.Date('01.01.2019', format= '%d.%m.%Y')] # farkli bir format girilince


i <-which(d > as.Date('01.01.2019', format= '%d.%m.%Y'))
i
d[i]


x <- seq(from = as.POSIXct('2012/01/01 12:00:00'),
         to= as.POSIXct('2012/01/01 12:45:00'),
         by='min')
x
class(x)

x > '2012/01/01 12:30:00'
x[x > '2012/01/01 12:30:00']


which(x > '2012/01/01 12:30:00')

x[which(x > '2012/01/01 12:30:00')]

d <-  seq(from=as.Date('2012/01/01'), to = as.Date('2012/01/25'), by='day')
d


which( d > '2012/01/13' & d < '2012/01/20')
d[which(d > '2012/01/13' & d < '2012/01/2020')]


# Fark hesaplama 




d <- seq(from = as.Date('2012/01/01'),
         to= as.Date('2012/06/01'),
         by='month')
d1 <- seq(from = as.Date('2012/02/01'),
          to= as.Date('2012/07/01'),
          by='month')
length(d1)
length(d)

class(d1)
class(d)

d1 -d # farklari tine yazilan formatin en kucugunu dikkate alarak yapiyor


d
d1

d1
d1 - as.Date('2012/02/01')


#tarih vektorlkerde siralama 

x <-  c(3,5,6,7,8,0,-9)

sort(x)
sort(x, decreasing = T)


d <- seq(from = as.Date('2012/01/01'),
         to= as.Date('2012/01/30'),
         by='day')
d
s <- sample(d)
s

sort(s)
sort(s, decreasing = T)
