# Reading Data
> library(uwIntroStats)
> pregout <- read.table("http://www.emersonstatistics.com/datasets/pregout.txt", header = TRUE)
> head(pregout)

# Regression
> regress("mean", bweight ~ age, data = pregout)
> regress("mean", bweight ~ age + sex + smoker + parity, data = pregout)

# Descriptive Statistics
> boxplot(pregout$bweight ~ pregout$smoker, names=c("yes", "no"), ylab = "Birthweight (gms)", xlab = "Smoking Status", main = "Boxplot of Birthweight by Smoking Status")

> plot(pregout$bweight ~ jitter(pregout$age), ylab = "Birthweight (gms)", xlab = "Age of Mother (years)", pch = 16, main = "Birthweight by Maternal Age")
> abline(lm(pregout$bweight ~ pregout$age))
