## Unit 2

## Practice 1

#Generate three graphs with R that tell the story of the data, the first one
a scatter plot of points, the second being a facet plot, and the second being a
third, a graph that tells us something statistical such as the distribution of 
the data and that contains the themes layer (theme).

```R
soccer <- read.csv(file.choose())
```
```R
head(soccer)
```

#Plots

#1. Point Scatter
```R
library(ggplot2)

ggplot(soccer, aes(x=Goals, y=Mins, 
                   color=Club)) + 
  geom_point()
```

#2. Aspects

```R
w <- ggplot(soccer, aes(x=Goals, y=Matches,
                        color=Club))


w + geom_point(size=3) + facet_grid(Club~.)
```

#3.Distribution

```R
v <- ggplot(soccer, aes(x=Goals))
h <- v + geom_histogram(binwidth = 10, aes(fill=Club),
                   color="Black")

h +
  xlab("Goals x Player") +
  ylab("Number of players") + ggtitle("Goals by team Distribution") +
  theme(axis.title.x = element_text(color = "Black", size=10),
        axis.title.y = element_text(color = "Black", size=10),
        )
```



