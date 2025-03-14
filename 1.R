# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve for 'prestige'
png(file="statisticalprestige.png")
hist(setData$prestige, probability = TRUE, 
     main = "Statistical Analysis for Prestige",
     xlab = "PRESTIGE", 
     col = "lightblue", 
     border = "black")

# Add a normal curve
x <- seq(min(setData$prestige, na.rm = TRUE), max(setData$prestige, na.rm = TRUE), length = 100)
y <- dnorm(x, mean = mean(setData$prestige, na.rm = TRUE), sd = sd(setData$prestige, na.rm = TRUE))
lines(x, y, col = "red", lwd = 2)
dev.off()


#STATISTICAL ANALYSIS FOR CENSUS
# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve for 'census'
png(file="census.png")
hist(setData$census, probability = TRUE, 
     main = "Statistical Analysis for Census",
     xlab = "CENSUS", 
     col = "lightblue", 
     border = "black")

# Add a normal curve
x <- seq(min(setData$census, na.rm = TRUE), max(setData$census, na.rm = TRUE), length = 100)
y <- dnorm(x, mean = mean(setData$census, na.rm = TRUE), sd = sd(setData$census, na.rm = TRUE))
lines(x, y, col = "red", lwd = 2)
dev.off()

