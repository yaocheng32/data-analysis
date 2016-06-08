data <- read.csv('Student0405.txt', header=T, sep='\t');
boxplot(PartyDays~ReligImp, data=data);
aggregate(PartyDays~ReligImp, data, mean);
aggregate(PartyDays~ReligImp, data, sd);
aggregate(PartyDays~ReligImp, data, length);
model <- aov(PartyDays~ReligImp, data=data);
