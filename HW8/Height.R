data <- read.table("Nov20Hmwk.txt", header=T);
model <- lm(Height~momheight+dadheight, data=data)
data$rstudent <- rstudent(model)
data$hii <- hatvalues(model)
data$dffitsi <- dffits(model)
data$cooks <- cooks.distance(model)