# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve for 'prestige'
png(file="prestige.png")
hist(setData$prestige, probability = TRUE, 
     main = "Central Tendency Analysis for Prestige",
     xlab = "PRESTIGE", 
     col = "lightblue", 
     border = "black")

# Add a normal curve
x <- seq(min(setData$prestige, na.rm = TRUE), max(setData$prestige, na.rm = TRUE), length = 100)
y <- dnorm(x, mean = mean(setData$prestige, na.rm = TRUE), sd = sd(setData$prestige, na.rm = TRUE))
lines(x, y, col = "red", lwd = 2)
dev.off()
