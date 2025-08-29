setwd("C:\\Users\\it24101987\\Desktop\\IT24101987")
#1
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)

#2
breaks <- seq(20, 70, by=5)

# Create histogram
hist(Delivery_Times$Delivery_Time_, breaks=breaks, 
     right=TRUE, 
     main="Histogram of Delivery Times", 
     xlab="Delivery Time")
#3
#a bell shaped curve that is symettrical can see in this 
#


#4
#Calculate summery table
freq_table<-hist(Delivery_Times$Delivery_Time_, breaks=breaks,right=TRUE,plot=FALSE)

#get culmative freq
cum_freq<-cumsum(freq_table$counts)

# Get the frequency table
freq_table <- hist(Delivery_Times$Delivery_Time_, breaks=breaks, right=TRUE, plot=FALSE)

# Calculate cumulative frequency
cum_freq <- cumsum(freq_table$counts)

# Plot cumulative frequency polygon
plot(freq_table$mids, cum_freq, type="o", 
     main="Cumulative Frequency Polygon",
     xlab="Delivery Time",
     ylab="Cumulative Frequency")

                 