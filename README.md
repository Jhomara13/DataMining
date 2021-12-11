# Unit 3

# Practice 1

First we are going to import our csv that we are going to work with called Salary Data which shows the salary based on years of experience.

```R
# Importing the dataset
dataset <- read.csv('Salary_Data.csv')
```

Now to prepare the data with the catools package for the seed that will take random non-sequential data.

```R
# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
library(caTools)
set.seed(123)
```

Now the split to prepare the datasets we are going to work with in this one, generates some true and false and with subset we are going to split them as training set and test_set

```R
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
Now we are going to regress the lm or linear model with the relationship between salary and years of experience. 

```R
# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Salary ~ YearsExperience,data = dataset)
summary(regressor)
```
We now perform the prediction on the test data with the regressor. 

```R
# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
```

Now for the graphs we have the following code 

## Visualising the Training set results

```R
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$YearsExperience, y=training_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Training Set)') +
  xlab('Years of experience') +
  ylab('Salary')
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G1P1.PNG)

Here we have the salary graph based on the experience with the training set, we have our positive constant which indicates that the more years the better the salary, and that the prediction with the training set, graphs this positive line.

## Visualising the Test set results

```R
ggplot() +
  geom_point(aes(x=test_set$YearsExperience, y=test_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Test Set)') +
  xlab('Years of experience') +
  ylab('Salary')
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G2P1.PNG)

Here we have the same graph but with our test set with 10 observations now we see exactly the same that our prediction based on the data is positive we see that some actual results are below the constant but the output is positive and rising.

# Practice 2

First we import our CSV data

```R
# Importing the dataset
dataset <- read.csv('50_Startups.csv')
dataset <- read.csv(file.choose())
```

Now in our data we have our column of states with 3 different ones, to be able to be numerical we use the code factor and we assign New York number 1, California number 2 and Florida number 3. 

```R
# Encoding categorical data 
dataset$State = factor(dataset$State,levels = c('New York', 'California', 'Florida'), labels = c(1,2,3))
```

Now we make the split and we will use catools for the random function with seed, and the split will be 0.8 or 80% of all data. And in training set will use the true and test the false.

```R
# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

Now we get the filter for the multiple linear regression with lm from linear model taking the profil and all the other columns of our training set. And we get our summary or a summary of the data.   

```R
# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ .,data = training_set )
summary(regressor)
```
And we make the prediction

```R
# Prediction the Test set results
y_pred = predict(regressor, newdata = test_set) y_pred
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G1P2.PNG)

Now we see that the value of P we have to choose those closest to 0 and the model tells us to eliminate the variables greater than 0.05, which is the significant value. 

And we are making the model with all the independent variables 

```R
# Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,data = dataset )
summary(regressor)
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G2P2.PNG)

And we eliminate the state by its P value.

```R
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, data = dataset )
summary(regressor)
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G3P2.PNG)

And we now eliminate the value of administration by the significant value of 0.05

```R
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,data = dataset)
summary(regressor)
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G4P2.PNG)

Here we have marketing spend which is very close 0.05 but the model tells us that we have to eliminate it.

```R
regressor = lm(formula = Profit ~ R.D.Spend,data = dataset )
summary(regressor)
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G5P2.PNG)

And with this we have our regressor

We already have our prediction

```R
y_pred = predict(regressor, newdata = test_set)
y_pred
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G6P2.PNG)

```R
# Homework analise the follow atomation backwardElimination function 
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}
SL = 0.05
#dataset = dataset[, c(1,2,3,4,5)]
training_set
backwardElimination(training_set, SL)
```
This function what it does is to take the parameters training set that are our data and SL or the significant value of 0.05 and what it does is a cycle starting at 1 and numbars that takes the amount of data in training set, and with this it obtains the regressor with the linear model between the profit and the other columns of our x that will be the training set, then sets maxVar with the maximum coefficient that will extract from the regressor summary and goes to the condition if this value is greater than the SL or significant value of 0. 05 assigns to the variable J the column that has that value and in x that is the dataset it will remove it and subtract numVars by 1 until it is left with the variables that do not exceed the significant value and will return the summary with the columns with the significant value less than 0.05.


# Practice 3

First we import the data into our csv file

```R
dataset <- read.csv(file.choose())
dataset <- dataset[, 3:5]
```
Next we make the division of the data in which we have the test data and the training data, within which we are requesting the values to be compared in a value equal to 0.75.

```R
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

Then we do the function scaling where we first say that the first values we want are the entertainment data and then the test data.

```R
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
```

Luego ajustamos lo que es la regresión logística

```R
classifier = glm(formula = Purchased ~ .,
                 family = binomial,
                 data = training_set)
```
First we request the test values by first requesting all data to 3

```R
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
```

Then we request the values greater than 0.5, 1 and 0.

```R
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
```
Then we do the metrix confusion, we generate a small vector, in which we request certain values and ask it to display it in a 3*3 form.

```R
cm = table(test_set[, 3], y_pred)
cm
```

Then we generate the following graphs, in which we request the test data and training data

```R
library(ggplot2)
ggplot(training_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(training_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(test_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(test_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```
![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G1-P3.PNG)

Within the graph we request the age, the purchases, and the number of purchases with the estimated salary. As we can see the highest point is one which is the highest number of purchases made.

Then we make the following graph in which we generate what is already the logistic regression

```R
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G2-P3.PNG)

In this graph we make a comparison of the training data taking into account the estimated salary and age, all values that are less than those are in red and more in green, as for example you may have an adult age but it may be that your financial status is not very well you will be in red, but if you have a young age as a minimum of 19 and your financial stability is well you will be in green.

In this graph we generate we make the same comparison as above but with the test values

```R
ibrary(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G3-P3.PNG)

Unlike the previous graph, we can see that in this one, there are more red dots than green dots, showing that most of them do not have a good estimated salary for their purchases.

# Practice 4

First we import our data

```R
dataset = read.csv(file.choose())
dataset = dataset[3:5]
dataset
```

We do a target coding

```R
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```
Then we divide the data, one for testing and the other for training, asking for the data to be divided from 0.75 and these values will be taken as the entertainment data from 0.75 and these values will be taken as the entertainment data.

```R
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

We split the data by scala features

```R
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

Then the KNN adaptation is done, first by importing the class library and then we split the data by asking for the test data first to be less than -3 and then for the training data to be greater than 3.

```R
 library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5,
             prob = TRUE)
```

Next we make the confusion matrix

```R
cm = table(test_set[, 3], y_pred)
```

Then we generate the first graph

```R
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G2-P4.PNG)

In this first graph we are presented with the results in training, within which we see the estimated salary along with the age of the people. and a large percentage of the people have a good financial status and can make the purchases they want.

Then we generate the second graph 

```R
ibrary(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![](https://github.com/Jhomara13/DataMining/blob/Unit3/Practices/G-P4.PNG)

A diferencia de la primera gráfica en esta podemos apreciar que  en los datos de prueba están un poco más del lado rojo, son más las personas las cuales su salario estimado es más bajo.




