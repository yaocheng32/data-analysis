muscle <- read.table("CH01PR27.txt");
names(muscle) <- c("mass", "age");
x = muscle$age - mean(muscle$age);
xsq = x^2;
model <- lm(muscle$mass~x+xsq);

xp <- seq(-20,20,0.1);
y <- 82.935749 - 1.183958*xp + 0.014840*xp^2;
plot(x, muscle$mass);
lines(xp, y, col="red");