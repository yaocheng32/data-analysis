women <- read.table("CH01PR27.txt")
names(women) <- c("mass", "age")
reg <- lm(mass~age, data=women)
pdf("women.pdf")
plot(women$age, women$mass, xlab="Age", ylab="Muscle Mass")
abline(reg)
dev.off()

predict(reg, list(age=60), level = 0.95, interval="confidence")
reg$residuals[8]
summary(reg)$sigma^2
confint(reg, 'age', level=0.95)

# a. It appears to be a good fit which shows that the muscle mass decreases with age.
# b. -1.1900, 84.94863, 4.443252, 66.80082