#DATA LOAD INTO R STUDIO
setData<-read.csv("C:/Users/user/Downloads/Prestige_New.csv")
setData
#Task 03

# FIND MINIMUM VALUE

incomemin <-min(setData$income)
incomemin

# FIND MAXMUM VALUE
incomemax <-max(setData$income)
incomemax

# FIND MEAN VALUE
incomemean <-mean(setData$income)
incomemean

# FIND MEDIAN VALUE
incomemedian <-median(setData$income)
incomemedian

# FIND MODE VALUE- 1
incomemode <-mode(setData$income)
incomemode

# FIND MODE VALUE -2
calculate_mode <- function(x) {
  u <- unique(x)            
  f <- tabulate(match(x, u))
  income_mode <- u[f == max(f)]
  return(income_mode)
}

# CALCULATION MODE
mode_income <- calculate_mode(setData$income)
print(mode_income)

# TASK 04

# INSTALL PACAKGEG ("ggplot2")
install.packages("ggplot2")
library(ggplot2)

#FIND OVERALL SUMMERY
summary(setData)

#FIND SUMMERY PRESTIGE
summary(setData$prestige)

# FIND SUMMERY EDUCATION
summary(setData$education)

# FIND SUMMERY INCOME
summary(setData$income)
#TASK 05

#FIND GRAPHICALLY USING BELL CURVES

setData<-read.csv("C:/Users/user/Downloads/Prestige_New.csv")
setData
#CREATE BELL CURVE FOR INCOME

y<-rnorm(setData$income)
png(file="income.png")
plotNormalHistogram(y,prob = FALSE,
                    main = "Central Tendency Analysis for Income",
                    xlab ="INCOME",length = 1000)
dev.off()

#CREATE BELL CURVE FOR PRESTIGE

y<-rnorm(setData$prestige)
png(file="prestige.png")
plotNormalHistogram(y,prob = FALSE,
                    main = "Central Tendency Analysis for Prestige",
                    xlab ="PRESTIGE",length = 1000)
dev.off()

#CREATE BELL CURVE FOR EDUCATION

y<-rnorm(setData$education)
png(file="education.png")
plotNormalHistogram(y,prob = FALSE,
                    main = "Central Tendency Analysis for Education",
                    xlab ="EDUCATION",length = 1000)
dev.off()
# Install and load RcmdrMisc if needed
install.packages("RcmdrMisc")
library(RcmdrMisc)

# Generate random normal data
y <- rnorm(setData$income)

# Plotting histogram with normal distribution
png(file="income.png")
plotNormalHistogram(y, 
                    prob = FALSE,
                    main = "Central Tendency Analysis for Income",
                    xlab = "INCOME",
                    length = 1000)
dev.off()

#FIND GRAPHICALLY USING BELL CURVES

#CREATE BELL CURVE FOR INCOME

y<-rnorm(setData$income)
png(file="income.png")
plotNormalHistogram(y,prob = FALSE,
                    main = "Central Tendency Analysis for Income",
                    xlab ="INCOME",length = 1000)
dev.off()
