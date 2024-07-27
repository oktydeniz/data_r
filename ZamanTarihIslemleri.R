Sys.Date()
Sys.time()


t1 <- Sys.time()
class(t1) 


t1 <- as.POSIXct(t1)
t1

class(t1)


unclass(t1) #unix formatinda aliyor 


t1l <- as.POSIXlt(t1)
t1l
unct1 <- unclass(t1l)

unct1$mon
unct1

names(unct1)

unct1[['min']]
unct1[['sec']]
unct1[['mday']]
year  <- unct1[['year']] + 1900
year

month <- unct1[['mon']] + 1
month




# %d day as a number (0-31) 01-31
# %a abbreviated weekday Mon
# %A unabbreviated weekday Monday
# %m month (00-12) 00-12
# %b unabbreviated month Jan
# %B ununabbreviated month January
# %y 2 digit year 07
# %Y 4 digit year 2007
a <-  '12/12/1920 18:30:23'

class(a)

a <- as.POSIXlt(a, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
a
a <- unclass(a)
a[['min']]
a[['sec']]
a[['mday']]
year  <- a[['year']] + 1900
year

month <- a[['mon']] + 1
month



#Zaman Farklari 

d <- '12/12/2020'
d1 <- '13/12/2020' 

d <- as.Date(d, format = '%d/%m/%Y')
d1 <- as.Date(d1, format = '%d/%m/%Y')
d1 - d
class(d1 - d)
result <-  as.double(d1 - d)
result



a <-  '12/12/2020 18:30:23'
b <-  '12/12/2020 18:50:11'

a <- as.POSIXlt(a, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
a
b <- as.POSIXlt(b, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
b

b-a




c <-  '12/12/2020 18:30:23'
d <-  '19/12/2020 17:50:11'

c <- as.POSIXlt(c, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
c
d <- as.POSIXlt(d, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
d

d-c


res <- as.double(d-c)
res




x <-  '12/12/2020 18:30:23'
y <-  '12/12/2020 17:50:11'

x <- as.POSIXlt(x, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
x
y <- as.POSIXlt(y, format = '%d/%m/%Y %H:%M:%S', tz='UTC')
y

y-x


res <- as.double(x-y)
res
