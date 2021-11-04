# DataMining

## Unit 1

## Practice 1

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:
  
Create an R script that will count how many of these numbers fall between -1 and 1 and divide
by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

Hint:
1. Initialize sample size
2. Initialize counter
3. loop for(i in rnorm(size))
4. Check if the iterated variable falls
5. Increase counter if the condition is true
6. return a result <- counter / N

```R
n<-10
c<-0

for(i in rnorm(n,mean=0,sd=1)){
  if(i>=-1 && i<=1){
    c<-c+1
  }
}

result<-c/n
result

```

## Practice 2

Functions

Practice find 20 more functions in R and make an example of it.

```R

#1 Rnorm:this function takes n random number from -1 to 1 

#Example: 
rnorm(2)

#2 Sqrt: this function allows you to calculate the square root of a number.

#Example:
sqrt(9)

#3 Paste: this function concatenate vectors after converting to character.

#Example:
message<-paste('Hello','World')


#4 C: this function allows you to combine and create a vector

#Example:

vec <- c(3,45,77)

#5 Seq: this function allows you to generate a sequence

#Example:
seq(1,5)

#6 Rep: this function allows to repeat a number n number of times, first we place the number then the quantity.

#Example:
rep(2,10)

#7 Sum: this function sums all the values within the range you set.

#Example:
sum(25:80)


#8 length:this function shows the number of elements in a vector.

#Example:
x<-c(1,2,3,4)
length(x)

#9 trunc: this function removes decimals from a number.

#Example:
trunc(2.987)

#10 round: this function rounds a number to the specified decimal places.

#Example:
round(7.952,digits=2)

#11 This function generates a loop until we decide to stop it

#Example:
while(TRUE){
  print("Hello good Morning....")
}

#12 With this function we can count the times that one deceives, First we start 
#it from what value we want it to start counting and then the rest of the function.

#Example:
counter <- 0

while(counter < 5){
  print("Counter:")
  print(counter)
  counter <- counter + 1
}

#13 The following function we can print the message repeatedly and then we can number them

#Example:
for(i in 0:5){
  print(i)
  print("Data Mining")
}

#14 With this we print the phrase one wants and the number of times that one wants

#Example:
for(i in 1:5){
  print("Hello World!")
}

#15 With this function we can know if the number we enter is an integer or not.

#Example:
is.integer(1)

#16 With this function we can know if the number we enter is double or not.

#Example:
is.double(5)


#17 With this function it shows what type of data it is.

#Example:
typeof(2)

#18 With this function we can do an operation, more simple and using variables.

#Example:
A <- 20
B <- 6
R <- A - B
R

#19 With this function we can do an operation, it is a little more complex than the previous one.

#Example:
var1 <-2.5
var2 <- 4

result <- var1 / var2
result

#20 In this way we can say that the numbers are different from.

#Example:
4 != 3
```

## Practice 3

Scenario: You are a Data Scientist working for a consulting firm.
One of your colleagues from the Auditing Department has asked you
to help them assess the financial statement of organization X.

You have been supplied with two vector of data: mounthly revenue and
expenses for the financial year in quiestion. Your task is to calculate
the following financial matrics:
  
- profit for each mounth
- profit after tax for each month (the tax rate is 30%)
- profit margin for each month - equal to profit after tax divided by revenue
- good months - where the profit after tax was greater than the mean for the year
- bad months - where the profit after tax was less then the mean for years
- the best month - where the profit after tax was max for the year
- the worst month - where the profit after tax was min for the year

All results need to be presented as vectors.

Results for dollar values need to be calculate with $0.01 precision, but need to be
presented in Units of $1,000(i.e. 1k) with no decimal point.

Results for the profit margin ratio needed to be presented in units of % with no
decimal points.

Note: Your collegue has warned you that it is okay for tax for any given month to be
negative (in accounting terms, negative tax translates into a deferred tax asset).

Hint 1

Use:
- round()
- mean() 
- max()
- min()

```R
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)

expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Calculate Profit As The Differences Between Revenue And Expenses
profit <- revenue - expenses 
profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit, 2)
tax 

#Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit-tax
profit.after.tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round(profit.after.tax/ revenue, 2) * 100
profit.margin

#Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax)
mean_pat

#Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat
good.months

#Bad Months Are The Opposite Of Good Months !
bad.months <- !good.months
bad.months

#The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

#The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses /1000,0)
profit.1000 <- round(profit/1000,0)
profit.after.tax.1000 <- round(profit.after.tax/1000,0)

#Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#BONUS:
#Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

#Print The Matrix
M

```

## Practice 4

Free Throws
You have been supplide data for two additiona in-game statics:
* Free Throws
* Free Throws Attempt

You need to create three plots that portray the following insights:
* Free Trows Attempts per game
* Accurance of Free Trhows
* Player playing style (2 vs 3 points preference) excluding Free Throws

*Each Free Throw is worth 1 Point

The data has been supplied in the form of vectors. You will have to Create the matrices before you proceed with the analysis.
```R
#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players 
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")
```

## Free Throws
```R
KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)
```
## Matrix

```R

FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)

rm(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)

colnames(FreeThrows) <- Seasons
rownames(FreeThrows) <- Players
FreeThrows 

```

## Free Throw Attempts
```R
KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)
```

## Matrix

```R
FreeThrowsAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)

rm(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)

colnames(FreeThrowsAttempts) <- Seasons
rownames(FreeThrowsAttempts) <- Players
FreeThrowsAttempts
```

## Games 
```R
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
```

## Matrix
```R
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)

rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)

colnames(Games) <- Seasons
rownames(Games) <- Players
```

## Field Goals

```R
KobeBryant_FG <- c(978,813,775,800,716,740,574,738,31,266)
JoeJohnson_FG <- c(632,536,647,620,635,514,423,445,462,446)
LeBronJames_FG <- c(875,772,794,789,768,758,621,765,767,624)
CarmeloAnthony_FG <- c(756,691,728,535,688,684,441,669,743,358)
DwightHoward_FG <- c(468,526,583,560,510,619,416,470,473,251)
ChrisBosh_FG <- c(549,543,507,615,600,524,393,485,492,343)
ChrisPaul_FG <- c(407,381,630,631,314,430,425,412,406,568)
KevinDurant_FG <- c(306,306,587,661,794,711,643,731,849,238)
DerrickRose_FG <- c(208,208,208,574,672,711,302,0,58,338)
DwayneWade_FG <- c(699,472,439,854,719,692,416,569,415,509)
```

## Matrix
```R
FieldGoals <- rbind(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)

rm(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)

colnames(FieldGoals) <- Seasons
rownames(FieldGoals) <- Players
```

## Field Goal Attempts

```R
KobeBryant_FGA <- c(2173,1757,1690,1712,1569,1639,1336,1595,73,713)
JoeJohnson_FGA <- c(1395,1139,1497,1420,1386,1161,931,1052,1018,1025)
LeBronJames_FGA <- c(1823,1621,1642,1613,1528,1485,1169,1354,1353,1279)
CarmeloAnthony_FGA <- c(1572,1453,1481,1207,1502,1503,1025,1489,1643,806)
DwightHoward_FGA <- c(881,873,974,979,834,1044,726,813,800,423)
ChrisBosh_FGA <- c(1087,1094,1027,1263,1158,1056,807,907,953,745)
ChrisPaul_FGA <- c(947,871,1291,1255,637,928,890,856,870,1170)
KevinDurant_FGA <- c(647,647,1366,1390,1668,1538,1297,1433,1688,467)
DerrickRose_FGA <- c(436,436,436,1208,1373,1597,695,0,164,835)
DwayneWade_FGA <- c(1413,962,937,1739,1511,1384,837,1093,761,1084)
```

## Matrix

```R
FieldGoalAttempts <- rbind(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)

rm(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)

colnames(FieldGoalAttempts) <- Seasons
rownames(FieldGoalAttempts) <- Players
```

## Points
```R
KobeBryant_PTS <- c(2832,2430,2323,2201,1970,2078,1616,2133,83,782)
JoeJohnson_PTS <- c(1653,1426,1779,1688,1619,1312,1129,1170,1245,1154)
LeBronJames_PTS <- c(2478,2132,2250,2304,2258,2111,1683,2036,2089,1743)
CarmeloAnthony_PTS <- c(2122,1881,1978,1504,1943,1970,1245,1920,2112,966)
DwightHoward_PTS <- c(1292,1443,1695,1624,1503,1784,1113,1296,1297,646)
ChrisBosh_PTS <- c(1572,1561,1496,1746,1678,1438,1025,1232,1281,928)
ChrisPaul_PTS <- c(1258,1104,1684,1781,841,1268,1189,1186,1185,1564)
KevinDurant_PTS <- c(903,903,1624,1871,2472,2161,1850,2280,2593,686)
DerrickRose_PTS <- c(597,597,597,1361,1619,2026,852,0,159,904)
DwayneWade_PTS <- c(2040,1397,1254,2386,2045,1941,1082,1463,1028,1331)
```

## Matrix
```R
Points <- rbind(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)

rm(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)

colnames(Points) <- Seasons
rownames(Points) <- Players
```

## Re-create the plotting function

```R
myplot <- function(z, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
}
```

## Visualize the new matrices

```R
myplot(FreeThrows)
myplot(FreeThrowsAttempts)
```

## Part 1 - Free Throw Attempts Per Game (You will need the Games matrix)
```R
myplot (FreeThrowsAttempts / Games)
```

Notice how Chris Paul gets few attempts per game

## Part 2 - Free Throw Accuracy
```R
myplot (FreeThrows / FreeThrowsAttempts)
```
* And yet Chris Paul's accuracy is one of the highest
* Chances are his team would get more points if he had more FTA's
* Also notice that Dwight Howard's FT Accuracy is extremely poor
* compared to other players. If you recall, Dwight Howard's

### Field Goal Accuracy was exceptional:
```R
myplot(FieldGoals/FieldGoalAttempts)
```
How could this be? Why is there such a drastic difference?
#We will see just now...

## Part 3 - Player Style Patterns Excluding Free Throws
```R
myplot ((Points-FreeThrows) / FieldGoals)
```
Because we have excluded free throws, this plot now shows us
#the true representation of player style change. We can verify
#that this is the case because all the marks without exception
#on this plot are between 2 and 3. That is because Field Goals
#can only be for either 2 points or 3 points.

## Unit 2

## Practice 1

#Generate three graphs with R that tell the story of the data, the first one
a scatter plot of points, the second being a facet plot, and the second being a
third, a graph that tells us something statistical such as the distribution of 
the data and that contains the themes layer (theme).

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




