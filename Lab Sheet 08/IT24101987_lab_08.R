setwd("C:\\Users\\it24101987\\Desktop\\IT24101987")

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
attach(data)

#Question 01
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

pop_mean
pop_sd

#Question 02
samples <- c()
for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
}

sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

sample_means
sample_sds


#Question 03
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

true_mean <- pop_mean
true_sd <- pop_sd / sqrt(6)


mean_of_sample_means
true_mean

sd_of_sample_means
true_sd

