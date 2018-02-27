

HousePowerConsum <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
datas <- HousePowerConsum[(HousePowerConsum$Date == "1/2/2007" | HousePowerConsum$Date == "2/2/2007"),]


DataTempo <- paste(datas$Date, datas$Time)
datasTemp <- strptime(DataTempo , "%d/%m/%Y %H:%M:%S")
dt <- as.POSIXct(datasTemp)


#Esse é o gerador do gráfico histograma.

with(datas,{
plot(Sub_metering_1~dt, type="l", ylab="Energy sub metering", xlab="", cex = 0.8)
 lines(Sub_metering_2~dt, col = "red")
 lines(Sub_metering_3~dt, col = "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8)





#Para salvar
png(file = "plot3.png", width = 480, height = 480)#Primeiro cria-se um arquivo na extenção desejada no diretorio.


with(datas,{
  plot(Sub_metering_1~dt, type="l", ylab="Energy sub metering", xlab="", cex = 0.8)
  lines(Sub_metering_2~dt, col = "red")
  lines(Sub_metering_3~dt, col = "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8)
#acima está o gráfico que criamos.

dev.off() #isso é para fechar e terminar de salvar o arquivo na extenção desejada.

#Para salvar nas opções desejadas
dev.copy(png, file = "plot3.png", width = 480  ,height = 480)
dev.off()