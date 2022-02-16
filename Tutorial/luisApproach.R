setwd("/Projects/R-Tutorial/Tutorial")
library(dplyr)

data<-read.csv(file="Menthol2forR.csv",  row.names=1)

timeMeasurements<-group_by(data, Time, Treatment)
meanValue <- summarize(timeMeasurements, amountOfMeasurements=n(), BlutGlucose = mean(BG, na.rm = TRUE))


library("ggplot2")
ggplot(meanValue, aes(x=Time, y=BlutGlucose, color=Treatment))+
  geom_point(lwd=2)+
  theme_classic()+
  theme(
    axis.title=element_text(size=20,face="bold"),
    axis.text=element_text(size=14, color="black"),
    legend.text = element_text(size=14, color="black"),
    legend.title = element_text(size = 14, face="bold")
  )


