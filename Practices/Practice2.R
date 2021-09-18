Functions

Practice find 20 more functions in R and make an example of it.

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