#Plot Data
hajarumi<-scan("E:/PLAYING GAME/1.txt")
hajarumits<-ts(hajarumi, frequency = 1, start = c(1,1))
hajarumits
#Prediksi(Forecasting)
hajarumitsforecasts <- HoltWinters(hajarumits, beta=FALSE, gamma=FALSE)
hajarumitsforecasts
hajarumitsforecasts$fitted
hajarumitsforecasts$SSE
HoltWinters(hajarumits, beta=FALSE, gamma=FALSE, l.start=0)
#Prediksi 10 Bulan ke depan (Forecast of 10 months after)
library(forecast)
hajarumitsforecasts2<-"forecast"(hajarumitsforecasts, h=ifelse(frequency(hajarumitsforecasts$x)>1,2*frequency(object$x),10), level=c(80,95),fan=FALSE,lambda=NULL, biasadj=FALSE)
hajarumitsforecasts2
#Plot Prediksi (Prediction plot)
plot(hajarumitsforecasts2)


