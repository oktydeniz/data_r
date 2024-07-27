

as.Date()

as.POSIXct() # unix formatinda tutuyordu genllikle saat bazli kullanimalr
as.POSIXlt() # gun ay yil tarzinda tutuyordu 


seq(from, to, by) # belli tarihler arasi orneklem olusturma


strptime() # as.POSIXct() ve as.POSIXlt() birlesimi 

chron() #12/12/2012 gibi formatlamada % kullanilmiyor
weekdays()
months()
sessionInfo()
Sys.setlocale('LC_TIME', 'tr_TR.UTF-8')

tarihler <- c('20/09/2020', '19/10/2020' , '19/11/2020' , 
              '11/12/2020' , '12/12/2019' , '17/08/2019', 
              '12/12/2018')

tarihler <- as.Date(tarihler, format = '%d/%m/%Y')
class(tarihler)
tarihler <- sort(tarihler,decreasing=T)
tarihler

weekdays(tarihler)








