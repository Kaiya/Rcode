myData = read.table("PITA_targets_hg18_0_0_TOP.tab", header = TRUE)
save(myData, file = "./PITA.Rdata")
summary(myData)