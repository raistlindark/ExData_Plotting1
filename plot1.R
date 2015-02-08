plot1<-function(){
  library("data.table")
  dat<-read.table("./household_power_consumption.txt",sep=";",header=T)
  dat1<-copy(dat)
  dat2<-copy(dat)
  dat1<-dat1[dat1$Date=="1/2/2007",]
  dat2<-dat2[dat2$Date=="2/2/2007",]
  dat<-rbind(dat1,dat2)
  png("plot1.png",480,480)
  hist(dat$Global_active_power, xlab="Global Active Power (kilowatts)",main= "Global Active Power" ,col="red")
  dev.off
  return()
}
  