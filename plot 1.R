

HousePowerConsum <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
datas <- HousePowerConsum[(HousePowerConsum$Date == "1/2/2007" | HousePowerConsum$Date == "2/2/2007"),]

#Esse é o gerador do gráfico
hist(datas$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)



#Para salvar
png(file = "plot1.png" width = 480, height = 480)#Primeiro cria-se um arquivo na extenção desejada no diretorio.

hist(datas$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)
#acima está o gráfico que criamos.

dev.off() isso é para fechar e terminar de salvar o arquivo na extenção desejada.

Para salvar nas opções desejadas
dev.copy(png, file = "plot1.png", width = 480  ,height = 480)
dev.off()