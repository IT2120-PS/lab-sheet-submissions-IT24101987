setwd("C:\\Users\\USER\\OneDrive\\Desktop\\IT24101987")

#1 random sample of size 25
baking_times <- rnorm(25, mean = 45, sd = 2)

#2 Test whether the average baking time is less than 46 minutes at a 5% level of significance.
test_result <- t.test(baking_times, mu = 46, alternative = "less")

print(test_result)

