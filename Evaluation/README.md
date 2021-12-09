# Evaluation Unit 3

First we added the requested libraries, previously the naiveBayes package was installed. 

```R
library(e1071)
library(naivebayes)
library(caret)
```

Then we do the data loading, in this practice we are using the social_network_ads data collection.

```R
dataset<-read.csv("Social_Network_Ads.csv")
dataset = dataset[3:5]
```

We do a target coding 

```R
dataset$Purchased=factor(dataset$Purchased,levels = c(0,1))
```
Next we make the division of the data in which we have the test data and the training data, within which we are requesting the values to be compared in a value equal to 0.75.

```R
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
```
Then we mention the limitations of each one, then we mention the use of naive bayes in which we make the comparison of the data.

```R
training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-3])


classifier=naiveBayes(formula=Purchased ~ . ,
                       data=training_set,
                       type='C-classification',
                       kernel='linear')
y_pred=predict(classifier,newdata=test_set[-3])
y_pred
```

We generate the corresponding graph in which we make the comparison of salary income and age of the individuals.

## Visualising the Test set results

```R
library(ggplot2)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Classifier (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))

contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add =
          TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3',
                                         'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G-PE.PNG)

As a conclusion we can see that in the graph shown, many of the people have a salary estimate in which they can acquire the product they want, although most of them do not have a salary estimate or may not be old enough to be able to acquire it,
With this we can see what is the approximate number of people who do meet the requirements.
