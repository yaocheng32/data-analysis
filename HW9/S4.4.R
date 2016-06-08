coffee <- matrix(c(6.0,7.0,8.0,7.4), ncol=2);
colnames(coffee) <- c("Yes", "No");
rownames(coffee) <- c("18-21", "Over 21");
coffee <- as.table(coffee);