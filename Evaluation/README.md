# Evaluation Unit 2

# We read the csv file, we have two options where we can obtain the data, one automatically and the other manually. We use the option that is manually.

```R
movies <- read.csv("Project-Data.csv")

#or

movies <- read.csv(file.choose())

#show data

movies
```

# Then we filter the data we need.

```R
 filtering_Genre<-(filter(movies,Genre %in% c("action","adventure","animation","comedy","drama")))

 filtering_studios<-(filter(filtering_Genre,Studio %in% c("Buena Vista Studios","Sony","WB","Fox","Paramount Pictures","Universal")))

#or


movies<-movies[movies$Studio=="Buena Vista Studios"|movies$Studio=="Fox"|movies$Studio=="Paramount Pictures"|movies$Studio=="Sony"|movies$Studio=="Universal"|movies$Studio=="WB",]

movies<-movies[movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama",]
```

# Now to create our graph we use ggplot2 and first with Aesthetics we tell it what we will use for x and y along with our data source and save it in the Ggraph variable, then we use geom_jittler for the point spread and geom_boxplot for the boxplot and set the size and transperency of it to be as similar to what we requested.

```R
# Boxplot

library(ggplot2)

Ggraph <- ggplot(movies, aes(x=Genre, y=Gross...US))

Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

GGgraph <- Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

GGgraph
```
# Finally we modify the text both in x and y using theme, where we modify the color and size together with the title

```R
# Theme

GGgraph +
  xlab("Genre") +
  ylab("Groos % US") +
  ggtitle("Domestic Gross % by Genre")+
  theme(axis.title.x = element_text(color = "Purple", size=14),
        axis.title.y = element_text(color = "Purple", size=14),
        plot.title = element_text(color = "Black", size=18,hjust=0.5))
```        

# Graph
![](https://github.com/Jhomara13/DataMining/blob/Unit2/Evaluation/Grafica.png)