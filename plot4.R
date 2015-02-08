plot4<-function(){
  library("data.table")
  dat<-read.table("./household_power_consumption1.txt",sep=";",header=T)
  dat1<-copy(dat)
  dat2<-copy(dat)
  dat1<-dat1[dat1$Date=="1/2/2007",]
  dat2<-dat2[dat2$Date=="2/2/2007",]
  dat<-rbind(dat1,dat2)
  
 png("plot4.png",480,480)
  par(mfcol=c(2,2))
 #1----------------------------------------------------
 plot(dat$Global_active_power,type="n", ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
 
 axis(1,labels=c("Thu","Fri","Sat"),at=c(1,nrow(dat[as.character(dat$Date)=="1/2/2007",]),length(dat$Date)),las=1)
 lines(dat$Global_active_power)
 
 #2----------------------------------------------------
 
 
  plot(dat$Sub_metering_1,type="n", ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
  points(dat$Sub_metering_2,type="n")
  points(dat$Sub_metering_3,type="n")
  axis(1,labels=c("Thu","Fri","Sat"),at=c(1,nrow(dat[as.character(dat$Date)=="1/2/2007",]),length(dat$Date)),las=1)
  lines(dat$Sub_metering_1)
  lines(dat$Sub_metering_2,col="red")
  lines(dat$Sub_metering_3,col="blue")
  legend("topright",legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),pch=20)
  #3--------------------------------------------------
 plot(dat$Voltage,type="n", ylab="Voltage",xlab="datetime",xaxt="n")
 
 axis(1,labels=c("Thu","Fri","Sat"),at=c(1,nrow(dat[as.character(dat$Date)=="1/2/2007",]),length(dat$Date)),las=1)
 lines(dat$Voltage)
 #4--------------------------------------------------
 plot(dat$Global_reactive_power,type="n", ylab="Global_reactive_power",xlab="datetime",xaxt="n")
 
 axis(1,labels=c("Thu","Fri","Sat"),at=c(1,nrow(dat[as.character(dat$Date)=="1/2/2007",]),length(dat$Date)),las=1)
 lines(dat$Global_reactive_power)
  dev.off
  return()
}



  