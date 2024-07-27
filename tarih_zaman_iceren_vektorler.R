

as.Date()
as.POSIXct()
as.POSIXlt()

d1 <- '12/12/2012'
d2 <- c('12/12/2012', '13/12/2012', '14/12/2012')
class(d2)

d2 <- as.Date(d2, format = '%d/%m/%Y')
class(d2)


d2 <- c('12-12-2012', '13-12-2012', '14-12-2012')
d3 <- rep(d2, times = 14)
d3 <- rep(d3, each= 3)
length(d3)
d3


d3 <- as.Date(d3, format = '%d-%m-%Y')


#Tarih ve zaman 

d2 <- c('12/12/2012 12:12:01', '13/12/2012 12:13:01', '14/12/2012 12:14:01')
d2

d2 <- as.POSIXlt(d2, format = '%d/%m/%Y %H:%M:%S', tz= "UTC")
d4 <- unclass(d2)
d4[['sec']][3]
year <- 1900 + d4[['year']][2]
year


#ardisik tarih 

x <- seq(from = as.Date('01/03/2023', format ='%d/%m/%Y'),
    to = as.Date('31/03/2023', format='%d/%m/%Y'),tz ='UTC', by = 1)
x


# gun 
x <- seq(from = as.Date('01/03/2023', format ='%d/%m/%Y'),
         to = as.Date('31/03/2023', format='%d/%m/%Y'),tz ='UTC', by = 'day')
x

#ay 
x <- seq(from = as.Date('01/03/2023', format ='%d/%m/%Y'),
         to = as.Date('31/12/2023', format='%d/%m/%Y'),tz ='UTC', by = 'month')
length(x)
#yil
x <- seq(from = as.Date('01/03/2003', format ='%d/%m/%Y'),
         to = as.Date('31/12/2023', format='%d/%m/%Y'),tz ='UTC', by = 'year')
length(x)



#quarter yillik  4 ceyrek 
x <- seq(from = as.Date('01/03/2020', format ='%d/%m/%Y'),
         to = as.Date('31/12/2023', format='%d/%m/%Y'),tz ='UTC', by = 'quarter')
length(x)
x


x <- seq(from = as.Date('01/01/2023', format ='%d/%m/%Y'),
         to = as.Date('01/03/2030', format='%d/%m/%Y'),tz ='UTC', by = 'quarter')
length(x)
x

#sadece yillar uzerinde calisir
x <- seq(from = as.Date('01/01/2023', format ='%d/%m/%Y'),
         to = as.Date('01/03/2023', format='%d/%m/%Y'),tz ='UTC', by = 'quarter')
length(x)
x

x <- seq(from = as.Date('01/01/2023', format ='%d/%m/%Y'),
         to = as.Date('01/03/2023', format='%d/%m/%Y'),tz ='UTC', by = 'week')
length(x)
x


#zaman iceren degerler

#60 -> 1 sny 
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 60 )
length(x)
x

# 1 saat
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 60 *60 )
length(x)
x

#saat olark arttirma
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'hour' )
length(x)
x

#dakika olark arttirma
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'min' )
length(x)
x

#sny olark arttirma
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'sec' )
length(x)
x

#gun arttirma
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('12/01/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'day' )
length(x)
x

#aylik arttirma
x <- seq(from = as.POSIXct('01/01/2023 12:12:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('12/03/2023 22:12:02', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'month' )
length(x)
x


x <- seq(from = as.POSIXct('01/01/2022 00:00:01', format ='%d/%m/%Y %H:%M:%S'),
         to = as.POSIXct('01/01/2023 00:00:01', format='%d/%m/%Y %H:%M:%S'),tz ='UTC', by = 'min' )
length(x)
x


#eger by parametresi numeric ise belirtilen tarih icinde en kucuk degeri 
#baz alir mesela 12:12:2022 de en kucuk deger 12 gun bunu baz 
#alarak artis yapar saat da 13:44 ise dk yi artirir gibi 








