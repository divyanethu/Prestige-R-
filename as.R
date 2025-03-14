# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve
png(file="income.png")
hist(setData$income, probability = TRUE, 
     main = "Central Tendency Analysis for Income",
     xlab = "INCOME", 
     col = "lightblue", 
     border = "black")

# Add a normal curve
x <- seq(min(setData$income), max(setData$income), length = 100)
y <- dnorm(x, mean = mean(setData$income), sd = sd(setData$income))
lines(x, y, col = "red", lwd = 2)
dev.off()
