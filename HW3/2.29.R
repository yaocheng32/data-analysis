women <- read.table("CH01PR27.txt")
names(women) <- c("mass", "age")
women.lm <- lm(mass~age, data=women)
anova(women.lm)