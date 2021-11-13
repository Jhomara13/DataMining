# Unit 2

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

# 1. Point Scatter
```R
library(ggplot2)

ggplot(soccer, aes(x=Goals, y=Mins, 
                   color=Club)) + 
  geom_point()
```
## Point Scatter
![](https://github.com/Jhomara13/DataMining/blob/Unit2/Practices/C1.PNG)

With this graph we can observe all the players of the different teams, in relation to the minutes player with the goals we can see a large amount in 0 goals due to several factors, either by position, injuries, called, etc. We can also observe the top scorer of the competition of the Tottenham team.

# 2. Aspects

```R
w <- ggplot(soccer, aes(x=Goals, y=Matches,
                        color=Club))


w + geom_point(size=3) + facet_grid(Club~.)
```
## Aspects
![](https://github.com/Jhomara13/DataMining/blob/Unit2/Practices/C2.PNG)

In this graph of facetar here I divided it each one by teams, with a relationship between goals and games played, I also specified for them to be graphs by scatter points with size of 3 and we can see that the concentration of goals is at 0 but they have several players with goals in the season. 


# 3.Distribution

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

## Distribution
![](https://github.com/Jhomara13/DataMining/blob/Unit2/Practices/C3.PNG)

In this graph that is a little difficult to define but we have that the trend is marked between 0 and 5 goals, for all teams, then this has a significant drop after these scores, as there are few teams that manage to score many goals, either by the template or the capabilities of each player, and then we see at the end that there are very few in the area of 20 goals or more, here in the graph we modify the texts to display in X and Y. 




