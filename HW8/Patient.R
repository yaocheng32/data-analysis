pat <- read.table("CH06PR15.txt");
names(pat) <- c("satisfaction", "age", "severity", "anxiety")
library(leaps)
Best <- regsubsets(satisfaction~age+severity+anxiety, data=pat)