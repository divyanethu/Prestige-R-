library(ggplot2)

# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal distribution curve for 'education'
ggplot(setData, aes(x = education)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "lightblue", color = "black") +
  stat_function(fun = dnorm, args = list(mean = mean(setData$education, na.rm = TRUE), sd = sd(setData$education, na.rm = TRUE)), color = "red", size = 1) +
  labs(title = "Normality Testing for Education", x = "EDUCATION") +
  theme_minimal()

# Save the histogram plot
ggsave("nor_education.png")

# Create a Q-Q plot for 'education'
ggplot(setData, aes(sample = education)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Education") +
  theme_minimal()

# Save the Q-Q plot
ggsave("qq_education.png")

#SHAPIRO WILK TESTING FOR PRESTIGE
install.packages("dplyr")
shapiro.test(setData$prestige)

#ANOVA TESTING FOR PRESTIGE and EDUCATION
setData <- na.omit(setData)
anovaprestige <- aov(prestige ~ education, data = setData)  
summary(anovaprestige)

#SHAPIRO WILK TESTING FOR EDUCATION
shapiro.test(setData$education)
