#TASK 07

#NORMALITY TESTING FOR PRESTIGE
library(ggplot2)

# Read the CSV file
setData <- read.csv("C:/Users/user/Downloads/Prestige_New.csv")

# Create a histogram with a normal curve for 'prestige'
ggplot(setData, aes(x = prestige)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "lightblue", color = "black") +
  stat_function(fun = dnorm, args = list(mean = mean(setData$prestige, na.rm = TRUE), sd = sd(setData$prestige, na.rm = TRUE)), color = "red", size = 1) +
  labs(title = "Normality Testing for Prestige", x = "PRESTIGE") +
  theme_minimal()

# Save the histogram plot
ggsave("nor_prestige.png")

# Create a Q-Q plot for 'prestige'
ggplot(setData, aes(sample = prestige)) +
  stat_qq() +
  stat_qq_line() +
  labs(title = "Q-Q Plot for Prestige") +
  theme_minimal()

# Save the Q-Q plot
ggsave("qq_prestige.png")

