patients <- read.table("CH06PR15.txt");
names(patients) <- c('Y', 'X1', 'X2', 'X3');
Full <- lm(Y~X1+X2+X3, data=patients);
Reduced <- lm(Y~X1, data=patients);