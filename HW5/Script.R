student <- read.table("UCD.txt", header=T);
Full <- lm(height ~ male + dadht + momht, data=student);
MomOnly <- lm(height ~ male + momht, data=student);
DadOnly <- lm(height ~ male + dadht, data=student);