# reference: https://medium.com/@manilwagle/how-to-deal-with-panel-data-practical-application-using-r-18ef95ae99c6

library(plm)
library(knitr)
library(broom)
library(tidyverse)
library(stargazer)
library(lmtest)
library(gplots)
library(wooldidge)

RENTAL <- read.csv("rentaldata.csv")
head(RENTAL)

rental_p <- pdata.frame(RENTAL, index = c("city", "year"))
kpps <- c("lrent", "y90", "lpop", "lavginc", "pctstu")
rental_view <- rental_p[keeps]
head(rental_view)

summary(rental_view)

# MODELLING
# OLS Model (ordinary least square)
ols <- lm(lrent~y90+lpop+lavginc+pctstu, data=RENTAL)
summary(ols)

# OLS MODEL using plm package
pooled <- plm(lrent~y90+lpop+lavginc+pctstu, data=RENTAL, model='pooling', index=c("city","year"))
summary(pooled)

stargazer(pooled, type='text')