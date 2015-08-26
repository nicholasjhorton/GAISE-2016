require(mosaic)
require(mosaicData)
Whickham <- mutate(Whickham,
                   agegrp = cut(age, breaks=c(1, 44, 64, 100), labels=c("18-44", "45-64", "65+")))

pdf("Whickham.pdf")
par(mfrow=c(3, 1))
Whickham <- mutate(Whickham,
                   agegrp = cut(age, breaks=c(1, 44, 64, 100), labels=c("18-44", "45-64", "65+")))
mosaicplot(tally(~ outcome + smoker, data=filter(Whickham, agegrp=="18-44")),
           ylab="Smoking status", xlab="Mortality status (after 10 years)",
           main="Results for 18-44 year olds")
mosaicplot(tally(~ outcome + smoker, data=filter(Whickham, agegrp=="45-64")),
           ylab="Smoking status", xlab="Mortality status (after 10 years)",
           main="Results for 45-64 year olds")
mosaicplot(tally(~ outcome + smoker, data=filter(Whickham, agegrp=="65+")),
           ylab="Smoking status", xlab="Mortality status (after 10 years)",
           main="Results for those 65+ years old at baseline")
dev.off()
