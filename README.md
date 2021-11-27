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

