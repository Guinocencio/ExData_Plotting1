

HousePowerConsum <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
datas <- HousePowerConsum[(HousePowerConsum$Date == "1/2/2007" | HousePowerConsum$Date == "2/2/2007"),]


DataTempo <- paste(datas$Date, datas$Time)
datasTemp <- strptime(DataTempo , "%d/%m/%Y %H:%M:%S")
dt <- as.POSIXct(datasTemp)


#Esse é o gerador do gráfico histograma.
plot(datas$Global_active_power~dt, type="l", ylab="Global Active Power (kilowatts)", xlab="")







#Para salvar
png(file = "plot2.png", width = 480, height = 480)#Primeiro cria-se um arquivo na extenção desejada no diretorio.

plot(data$Global_active_power~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
#acima está o gráfico que criamos.

dev.off() #isso é para fechar e terminar de salvar o arquivo na extenção desejada.

Para salvar nas opções desejadas
dev.copy(png, file = "plot2.png", width = 480  ,height = 480)
dev.off()