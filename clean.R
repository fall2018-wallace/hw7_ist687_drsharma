
census <- census[,-1:-4]
census <- census[-c(1,53,10),]
colnames(census) <- c("stateName","population","popOver18","percentOver18")

