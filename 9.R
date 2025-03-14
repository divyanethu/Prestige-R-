# Scatter plot of Prestige vs Women percentage
png(file = "prestige_vs_women.png")
plot(x = setData$women, 
     y = setData$prestige, 
     xlab = "Percentage of Women", 
     ylab = "Prestige", 
     main = "Scatter Plot: Prestige vs Women Percentage", 
     pch = 19, 
     col = "blue")
abline(lm(prestige ~ women, data = setData), col = "red") # Add regression line
dev.off()

# Shapiro-Wilk test for normality on prestige
shapiro.test(setData$prestige)

# Shapiro-Wilk test for normality on percentage of women
shapiro.test(setData$women)

# Pearson correlation test
cor.test(setData$prestige, setData$women, method = "pearson")
