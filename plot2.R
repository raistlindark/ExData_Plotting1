plot2<-function(){
  library("data.table")
  dat<-read.table("./household_power_consumption.txt",sep=";",header=T)
  dat1<-copy(dat)
  dat2<-copy(dat)
  dat1<-dat1[dat1$Date=="1/2/2007",]
  dat2<-dat2[dat2$Date=="2/2/2007",]
  dat<-rbind(dat1,dat2)
  png("plot2.png",480,480)
  plot(dat$Global_active_power,type="n", ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
 
  axis(1,labels=c("Thu","Fri","Sat"),at=c(1,nrow(dat[as.character(dat$Date)=="1/2/2007",]),length(dat$Date)),las=1)
  lines(dat$Global_active_power)
  dev.off
  return()
}


#dat[as.character(dat$Date)=="1/2/2007",]
  