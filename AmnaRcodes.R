#to study the impact of foreign exchange rate on the GDP 
library(ggplot2)
#plot a scatterplot of GDP and foreign exchange
ggplot(datafffff, aes(x = Exchangerate, y = GDP)) +
  geom_point()
ggplot(datafffff, aes(x = Exchangerate, y = GDP)) +
  geom_point()+ stat_smooth(method = "lm",col = "#C42126",se = FALSE,size = 1)
summary(datafffff)
options(scipen = 999)
summary(datafffff)
#finding correlation
cor(datafffff$Exchangerate, datafffff$GDP, method = "pearson")
#running regression
exchGDP.lm <- lm(GDP ~ Exchangerate, data = datafffff)
summary(exchGDP.lm)
GDP.lm<-lm(GDP ~ Exchangerate + Inflation, data = datafffff)
summary(GDP.lm)

