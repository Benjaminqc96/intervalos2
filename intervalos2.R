x4 <- c(5,12,14,17,23,30,40,47,55,67,72,81,96,112,127)#escurrimientoi
y4<-c(4,10,13,15,15,25,27,46,38,46,53,70,80,99,100)# precipitacion pluvial

#1) CALCULE EL INT DE prediccion cuando el vol pluvial es de 40 para predecir el escurrimienyto de pforma precisa yconfiable
#¿ sugiere el intervalo resultante del ejer 1 información precisa sobre el valor de escurrimientopara esa oibservación?
#2) calcule intervalo de predicción para el escurrimiento cuando la precipoitacion pluvial es de 50??
#¿ que se puede decir sobre el nivel de predicción para los dos intervalos que calculo?
modelo<-lm(y4~x4)
dato<-data.frame(x4=40)
predict(modelo,dato,interval = "prediction")
confint(modelo)
#por arriba esta acotado en 43.41917 y por debajo por 20.32518, usando el 95% de confianza
dato2<-data.frame(x4=50)
predict(modelo,dato2,interval = "prediction")
confint(modelo)
#que con un 95% de confianza el valor estimado estara en el intervalo (28.59,51.6), dependiendo de todos los
#posibles valores de bo y b1
##################################### ejercicio 3 3 #########################3333
x3<- c(42.2,42.6,43.3,43.5,43.7,44.1,44.9,45.3,45.7,45.7,45.9,46, 46.2,46.2,46.8,46.8, 47.1,47.2) ### velocidad de prueba
y3 <- c(44,44,44,45,45,46,46,46,47,48,48,48,47,48,48,49,49,49) ## velocidad rodar
mod3<-lm(y3~x3)
dato3<-data.frame(x3=45)
dato4<-data.frame(x3=47)
#1) calcule intervalo de confianza de 95 % para la velodicada de rodamiento cuando la velo de prueba es 45
#)2 calcule int de prediccion a 95 % para un solo valor de velo de rodamiento cuando la velo de prueba es 47
predict(mod3,dato3,interval = "confidence")
confint(mod3)
predict(mod3,dato4,interval="confidence")

