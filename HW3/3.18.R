prod <- read.table("CH03PR18.txt")
names(prod) <- c("hour", "size")
prod$sqrtsize = sqrt(prod$size)
prod.lm <- lm(hour~sqrtsize, data=prod)

#(c)
plot(prod$sqrtsize, prod$hour)
#abline(prod.lm)

#(d)
#plot(predict(prod.lm), resid(prod.lm))
#qqnorm(resid(prod.lm), ylab="Residuals", xlab="Normal Scores", main="")

