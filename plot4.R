

HousePowerConsum <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
datas <- HousePowerConsum[(HousePowerConsum$Date == "1/2/2007" | HousePowerConsum$Date == "2/2/2007"),]


DataTempo <- paste(datas$Date, datas$Time)
datasTemp <- strptime(DataTempo , "%d/%m/%Y %H:%M:%S")
dt <- as.POSIXct(datasTemp)


#Esse é o gerador do gráfico histograma.

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(datas, {
  plot(Global_active_power~dt, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="", cex=0.7)
  plot(Voltage~dt, type="l", 
       ylab="Voltage", xlab="datetime", cex=0.7)
  plot(Sub_metering_1~dt, type="l", 
       ylab="Energy sub metering", xlab="", cex=0.7)
  lines(Sub_metering_2~dt,col='Red')
  lines(Sub_metering_3~dt,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=1)
  plot(Global_reactive_power~dt, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="datetime", cex=0.5)
})




#Para salvar
png(file = "plot4.png", width = 480, height = 480)#Primeiro cria-se um arquivo na extenção desejada no diretorio.

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(datas, {
  plot(Global_active_power~dt, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="", cex=0.7)
  plot(Voltage~dt, type="l", 
       ylab="Voltage", xlab="datetime", cex=0.7)
  plot(Sub_metering_1~dt, type="l", 
       ylab="Energy sub metering", xlab="", cex=0.7)
  lines(Sub_metering_2~dt,col='Red')
  lines(Sub_metering_3~dt,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=1)
  plot(Global_reactive_power~dt, type="l", 
       ylab="Global Rective Power",xlab="datetime", cex=0.5)
})

#acima está o gráfico que criamos.

dev.off() #isso é para fechar e terminar de salvar o arquivo na extenção desejada.

Para salvar nas opções desejadas
dev.copy(png, file = "plot4.png", width = 480  ,height = 480)
dev.off()