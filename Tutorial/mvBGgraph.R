setwd("/Projects/R-Tutorial/Tutorial")
library("ggplot2")
data<-read.csv("Menthol2forR.csv",  header = TRUE,
             colClasses = c("Integer", "character", "character", "Integer", "Integer"))

str(data)

data$Treatment<- as.factor(data$Treatment)
ggplot(data, aes(x=Time, y=BG, color=Treatment))+ geom_line()

View(data)
ggplot(data, aes(x=Time, y=BG, color=Treatment))+
  geom_point(lwd=2)+
  theme_classic()+
  theme(  
    axis.title=element_text(size=20,face="bold"),
    axis.text=element_text(size=14, color="black"),
    legend.text = element_text(size=14, color="black"),
    legend.title = element_text(size = 14, face="bold")
  )
