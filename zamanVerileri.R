# %d day as a number (0-31) 01-31
# %a abbreviated weekday Mon
# %A unabbreviated weekday Monday
# %m month (00-12) 00-12
# %b unabbreviated month Jan
# %B ununabbreviated month January
# %y 2 digit year 07
# %Y 4 digit year 2007

Sys.Date()
today <- Sys.Date()
today
class(today)

t <- '06/06/2016'
class(t)


t <-  format(t, format = '%d/%m/%Y')
class(t)

t <- '06/06/2016'

newT <- as.Date(t, format ='%d/%m/%Y' )
class(newT)
newT

t <-  '23-05-2020'
as.Date(t)

as.Date(t, format = '%d-%m-%Y')







