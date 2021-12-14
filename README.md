# Unit 4

# Evaluation 

Implement the K-Means clustering model with the Iris.csv dataset found at  using the
found at https://github.com/jcromerohdz/iris using the
kmeans() method in R. Once the clustering model is obtained do the corresponding data visualization analysis.
data visualization analysis is performed.


First we import the csv data we are going to use, then we assign the columns we are going to work with.

```R
# Importing the dataset
dataset = read.csv('iris.csv')
dataset = dataset[1:4]
```
We determine the number of clusters to use through the Elbow method, for that we create a vector called WCS that through a cycle from 1 to 10 will save the sum of the squares within each group and with the help of Kmeans we will obtain the number of clusters.And we are looking for the curve that would be 3 

```R
# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')
```
![](https://github.com/Jhomara13/DataMining/blob/Unit4/Evaluation/G1E4.PNG)

Here we created the number of clusters which were 3 together with a random seed, it is worth mentioning that kmeans works in a way that through iterations between the data and these classifies them based on their characteristics.

```R
# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster
```


# Visualising the clusters
```R
# install.packages('cluster')
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of iris'),
         xlab = 'Length',
         ylab = 'Width')
```
![](https://github.com/Jhomara13/DataMining/blob/Unit4/Evaluation/G2E4.PNG)

Here we can visualize the grouping of the data, which separates them by similarities between sizes, we see that between group 1 and 2 have similarities and group 3 is totally isolated which is the setosa iris, on the other hand we have iris virginica and vergicolor that by their size are similar and that is why they share characteristics and is shown in the graph
