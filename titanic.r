# SIMPLE LOGISTIC REGRESSION #

setwd("D:\\PÓS-GRADUAÇÃO\5_Modelos Estatísticos\Regressão logística") #pointo to directory specified
getwd()                                                               #only to verify if it is pointed to correct directory
Dados <- read.csv2("Titanic.csv")                                     #uploading Titanic database

modelo1=glm(Dados$Sobrevivente~Dados$Sexo,family=binomial(link="logit"));modelo1  #generalized linear model
summary(modelo1)
modelo1$coefficients
odds <- exp(-2.477825)



modelo2=glm(Dados$Sobrevivente~Dados$Idade,family=binomial(link="logit"));modelo2
summary(modelo2)
modelo2$coefficients

modelo3=glm(Dados$Sobrevivente~Dados$Classe,family=binomial(link="logit"));modelo3
summary(modelo3)
modelo3$coefficients


class(Dados$Classe)
Dados$Classecat <- as.factor(Dados$Classe)
class(Dados$Classecat)

modelo4=glm(Dados$Sobrevivente~Dados$Classecat,family=binomial(link="logit"));modelo4
summary(modelo4)
modelo4$coefficients



# MULTIPLE LOGISTIC REGRESSION #


modelo5=glm(Dados$Sobrevivente~Dados$Sexo+Dados$Idade+Dados$Irmãos+Dados$Pais+Dados$Tarifa+Dados$Classecat,family=binomial(link="logit"));modelo5
summary(modelo5)
modelo5$coefficients

modelo6=glm(Dados$Sobrevivente~Dados$Sexo+Dados$Idade,family=binomial(link="logit"));modelo6
summary(modelo6)
modelo6$coefficients

modelo7=glm(Dados$Sobrevivente~Dados$Sexo+Dados$Idade+Dados$Irmãos+Dados$Pais+Dados$Classecat,family=binomial(link="logit"));modelo7
summary(modelo7)
modelo7$coefficients
