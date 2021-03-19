setwd("C:/Users/Colleen Yanarella/Desktop/Brianna_more_power")

#Read in input
noheadsnp <- read.csv(file = 'noheadsnp.csv')
orderednoheadm <- read.csv(file = 'orderednoheadm.csv')
noheadt <- read.csv(file = 'noheadt.csv')

#Remove weird csv column and rename header
noheadsnpnew <- subset(noheadsnp, select = -X)
colnames(orderednoheadm)[1] <- "SNP_ID"
colnames(noheadt)[1] <- "SNP_ID"

#Merge step
maizesnp <- data.frame(merge(noheadsnpnew, orderednoheadm, by="SNP_ID"))
teosintesnp <- data.frame(merge(noheadsnpnew, noheadt, by="SNP_ID"))

#Change order SNP_ID, Chromosome, Position, ...
maizesnpmerge <-  maizesnp[, c(1, 3, 4, 2, 5:(length(maizesnp)))]
teosintesnpmerge <-  teosintesnp[, c(1, 3, 4, 2, 5:(length(teosintesnp)))]

#Write files to go back to my wimpy device
write.csv(maizesnpmerge, file = "maizesnpmerge.csv")
write.csv(teosintesnpmerge, file = "teosintesnpmerge.csv")
