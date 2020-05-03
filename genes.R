library(ggplot2)

s4 <- read.table('SRR3879604_1.txt', header = FALSE)

s4 <- s4[order(s4$V2, decreasing = T),]

count_s4 <- s4$V2

threshold_s4 <- mean(count_s4) + 2*sd(count_s4)

num <- seq(1, nrow(s4))

whitelist_s4 <- as.data.frame(s4[which(s4[,2] < threshold_s4),1])
rownames(whitelist_s4) <- 1: nrow(whitelist_s4)
colnames(whitelist_s4) <- c("Barcodes")


df_s4 <- data.frame(Barcodes = s4$V1, Counts = s4$V2, whitelist_s4 = s4$V1 %in% whitelist_s4$Barcodes)

hist(df_s4$Counts[df_s4$Counts > 5 & df_s4$Counts < 1000], breaks = 25)

write.table(whitelist_s4, file = "s4_wl.txt", row.names = FALSE, col.names = FALSE,  quote = FALSE)


s5 <- read.table('SRR3879605_1.txt', header = FALSE)

count_s5 <- s5$V2

threshold_s5 <- mean(count_s5) + 2*sd(count_s5)

num <- seq(1, nrow(s5))

whitelist_s5 <- as.data.frame(s5[which(s5[,2] < threshold_s5),1])
rownames(whitelist_s5) <- 1: nrow(whitelist_s5)
colnames(whitelist_s5) <- c("Barcodes")


df_s5 <- data.frame(Barcodes = s5$V1, Counts = s5$V2, whitelist_s5 = s5$V1 %in% whitelist_s5$Barcodes)

hist(df_s5$Counts[df_s5$Counts > 5 & df_s5$Counts < 1000], breaks = 25)

write.table(whitelist_s5, file = "s5_wl.txt", row.names = FALSE, col.names = FALSE,  quote = FALSE)


s6 <- read.table('SRR3879606_1.txt', header = FALSE)

count_s6 <- s6$V2

threshold_s6 <- mean(count_s6) + 2*sd(count_s6)

num <- seq(1, nrow(s6))

whitelist_s6 <- as.data.frame(s6[which(s6[,2] < threshold_s6),1])
rownames(whitelist_s6) <- 1: nrow(whitelist_s6)
colnames(whitelist_s6) <- c("Barcodes")


df_s6 <- data.frame(Barcodes = s6$V1, Counts = s6$V2, whitelist_s6 = s6$V1 %in% whitelist_s6$Barcodes)

hist(df$Counts[df_s6$Counts > 5 & df_s6$Counts < 1000], breaks = 25)

write.table(whitelist_s6, file = "s6_wl.txt", row.names = FALSE, col.names = FALSE,  quote = FALSE)
