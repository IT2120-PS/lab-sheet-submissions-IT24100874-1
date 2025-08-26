# 1: Set the working directory to your folder
setwd("C:\\Users\\sdsjm\\OneDrive\\Desktop\\IT24100874")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

fix(Delivery_Times)
attach(Delivery_Times)

# 2: Draw a histogram with nine classes, lower limit 20, upper limit 70, right-open intervals.
histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  main = "Histogram of Delivery Times",
                  xlab = "Delivery Time (minutes)",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  col = "lightblue",
                  border = "black")

# 3: COMMENT ON THE SHAPE
breaks <- histogram$breaks
cum_freq <- c(0, cumsum(histogram$counts))

# 4: Draw the ogive in a new, separate plot
plot(breaks, cum_freq,
     type = "l", # 'l' for lines
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)), # Set y-axis to start at 0
     col = "red",
     lwd = 2)
grid()

points(breaks, cum_freq, pch = 16, col = "red")

cumulative_table <- cbind(Upper_Limit = breaks, Cumulative_Frequency = cum_freq)
print("Cumulative Frequency Table:")
print(cumulative_table)

