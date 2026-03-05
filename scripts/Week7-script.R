data(HairEyeColor)
str(HairEyeColor)
View(HairEyeColor)

?HairEyeColor

mosaicplot(HairEyeColor)
mosaicplot(HairEyeColor, main="Mosaic Plot: Hair,Eye Color and sex",color = TRUE)

HairEye2D <- margin.table(HairEyeColor,c(1,2))
mosaicplot(HairEye2D,main = "Hair vs Eye Color Mosaic Plot",color = TRUE)

par(mfrow=c(1,2))
mosaicplot(HairEyeColor[,,"Male"],main="Male",color=TRUE)
mosaicplot(HairEyeColor[,,"Female"],main="Female",color=TRUE)
par(mfrow=c(1,1))

install.packages("vcd")
library(vcd)
mosaic(HairEyeColor,shape=TRUE,legend=TRUE,main="Shaped Mosaic Plot")
