# Evaluation Unit 2

We read the csv file.
We have two options where we can obtain the data, one automatically and the other manually. We use the option that is manually.

```R
#movies <- read.csv("Project-Data.csv")

movies <- read.csv(file.choose())
movies
```

Then we filter the data we need.
```R
 filtering_Genre<-(filter(movies,Genre %in% c("action","adventure","animation","comedy","drama")))

 filtering_studios<-(filter(filtering_Genre,Studio %in% c("Buena Vista Studios","Sony","WB","Fox","Paramount Pictures","Universal")))
```


movies<-movies[movies$Studio=="Buena Vista Studios"|movies$Studio=="Fox"|movies$Studio=="Paramount Pictures"|movies$Studio=="Sony"|movies$Studio=="Universal"|movies$Studio=="WB",]

movies<-movies[movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama",]


# Boxplot

Ggraph <- ggplot(movies, aes(x=Genre, y=Gross...US))

Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

GGgraph <- Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

GGgraph

# Theme

GGgraph +
  xlab("Genre") +
  ylab("Groos % US") +
  ggtitle("Domestic Gross % by Genre")+
  theme(axis.title.x = element_text(color = "Purple", size=14, family = "Calisto MT"),
        axis.title.y = element_text(color = "Purple", size=14, family = "Calisto MT"))
