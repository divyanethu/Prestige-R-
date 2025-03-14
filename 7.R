# Scatter plot of Prestige vs Education
png(file = "scevp.png")

# Create scatter plot
plot(x = setData$education, y = setData$prestige,
     xlab = "EDUCATION",
     ylab = "PRESTIGE",
     main = "SCATTER PLOT OF PRESTIGE VS EDUCATION",
     pch = 19,  # solid points
     col = rgb(0, 0, 0, 0.6),  # semi-transparent black
     xlim = c(min(setData$education) - 1, max(setData$education) + 1),
     ylim = c(min(setData$prestige) - 5, max(setData$prestige) + 5)
)

# Add regression line
abline(lm(prestige ~ education, data = setData), col = "red", lwd = 2)

# Add grid for better readability
grid()

# Add a legend
legend("topleft", legend = "Linear Fit", col = "red", lty = 1, lwd = 2)

dev.off()

#PERFORM PERSON CORRELATION TEST
test<- cor.test(setData$education, setData$prestige, use="correlation_test")
test
