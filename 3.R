# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve for 'education'
png(file="education.png")
hist(setData$education, probability = TRUE, 
     main = "Central Tendency Analysis for Education",
     xlab = "EDUCATION", 
     col = "lightblue", 
     border = "black")

# Add a normal curve
x <- seq(min(setData$education, na.rm = TRUE), max(setData$education, na.rm = TRUE), length = 100)
y <- dnorm(x, mean = mean(setData$education, na.rm = TRUE), sd = sd(setData$education, na.rm = TRUE))
lines(x, y, col = "red", lwd = 2)
dev.off()
