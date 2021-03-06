

HousePowerConsum <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
datas <- HousePowerConsum[(HousePowerConsum$Date == "1/2/2007" | HousePowerConsum$Date == "2/2/2007"),]

#Esse � o gerador do gr�fico
hist(datas$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)



#Para salvar
png(file = "plot1.png" width = 480, height = 480)#Primeiro cria-se um arquivo na exten��o desejada no diretorio.

hist(datas$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)
#acima est� o gr�fico que criamos.

dev.off() isso � para fechar e terminar de salvar o arquivo na exten��o desejada.

Para salvar nas op��es desejadas
dev.copy(png, file = "plot1.png", width = 480  ,height = 480)
dev.off()