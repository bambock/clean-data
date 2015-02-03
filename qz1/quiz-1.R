# QUIZ 1

# question 1
#url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
#dat<-"acs.dat.csv"
#download.file(url, dat, method='curl')

# question 3
#url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
#dat<-"ngap.xlsx"
#download.file(url, dat, method='wget')

# question 4
#url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
#data<-"restaurants.xml"
#download.file(url, data, method='wget')

# question 5
#url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
#data<-"ss06pid.csv"
#download.file(url, data, method='wget')

system.time(DT[,mean(pwgtp15), by=SEX])
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
#system.time(rowMeans(DT)[DT$SEX==1];rowMeans(DT)[DT$SEX==2])
#system.time(mean(DT[DT$SEX==1,]$pwgtp15);mean(DT[DT$SEX==2,]$pwgtp15))
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
cat(system.time(mean(DT$pwgtp15,by=DT$SEX)))