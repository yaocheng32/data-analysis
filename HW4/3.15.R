# (a)
solu = read.table("CH03PR15.txt", header=T);
names(solu) <- c("solution", "time");
solu.lm <- lm(solution~time, data=solu);

# (b)
Reduced <- solu.lm;
Full <- lm(solution~ 0 + as.factor(time), data=solu);
anova(Reduced, Full);