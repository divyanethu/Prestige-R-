# Normality testing for Prestige
png(file = "nor_prestige2.png")

# Create the histogram
hist(setData$prestige, 
     breaks = 10, 
     prob = TRUE, 
     main = "Normality Testing for Prestige", 
     xlab = "PRESTIGE", 
     col = "lightblue")

# Add a normal distribution curve
curve(dnorm(x, mean=mean(setData$prestige), sd=sd(setData$prestige)), 
      col="darkblue", 
      lwd=2, 
      add=TRUE)

dev.off()

#SHAPIRO WILK TESTING FOR PRESTIGE
shapiro.test(setData$prestige)

#SHAPIRO WILK TESTING FOR INCOME
shapiro.test(setData$income)

#ANOVA TESTING FOR PRESTIGE and INCOME
setData <- na.omit(setData)
anovaincome <- aov(prestige ~ income, data = setData)  
summary(anovaincome)


#SCATTER PLOT OF PRESTIGE VS INCOME
png(file = "scivp.png")
plot(x=setData$income, y =setData$prestige,
     xlab="INCOME",
     ylab ="PRESTIGE",
     main ="SCATTER PLOT OF PRESTIGE VS INCOME",
     pch =19,
     col="black",
     xlim=c(min(setData$income)  -1,max(setData$income) +1),
     ylim=c(min(setData$prestige)-5,max(setData$prestige) +5)
)
abline(lm(prestige~income, data = setData),col ="red")
dev.off()

#PERFORM PERSON CORRELATION TEST
test<- cor.test(setData$income, setData$prestige,
                use="correlation_test")
test