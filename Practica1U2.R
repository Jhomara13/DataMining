#Generar tres gráficas con R que cuente la historia de los datos, la primera que sea 
#una gráfica de dispersión de puntos, la segunda que sea una gráfica en facetas y la 
#tercera una gráfica que nos diga algo estadístico como la distribución que tienen los datos 
#y que contenga la capa temas (theme). 

soccer <- read.csv(file.choose())

head(soccer)


#Plots
#1. Dispersion de Puntos
library(ggplot2)

ggplot(soccer, aes(x=Goals, y=Mins, 
                   color=Club)) + 
  geom_point()

#2. Facetas

w <- ggplot(soccer, aes(x=Goals, y=Matches,
                        color=Club))


w + geom_point(size=3) + facet_grid(Club~.)

#3.Distribucion

v <- ggplot(soccer, aes(x=Goals))
h <- v + geom_histogram(binwidth = 10, aes(fill=Club),
                   color="Black")

h +
  xlab("Goals x Player") +
  ylab("Number of players") + ggtitle("Goals by team Distribution") +
  theme(axis.title.x = element_text(color = "Black", size=10),
        axis.title.y = element_text(color = "Black", size=10),
        )

