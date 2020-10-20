#! /usr/local/bin/Rscript

library(survminer)
library(survival)
png("fig1.png")
df <- read.table("data.txt", header = TRUE)
km_model <- survfit(Surv(time, DEATH_EVENT) ~1, data = df)
table <- summary(km_model, times = seq(from = 0, to = 290, by = 30))
outputtab <- cbind(table$time,table$n.risk,table$n.event,round(table$surv,3),round(table$cumhaz,3))
rownames(outputtab) <- NULL
colnames(outputtab) <- c("Time","Risk Set","Number of Event","Survival","Hazard")

km_model2 <- survfit(Surv(time, DEATH_EVENT) ~ as.factor(smoking), data = df)
options(repr.plot.width = 18, repr.plot.height = 8)
ggsurv <- ggsurvplot(km_model2, data = df, conf.int = TRUE,
           break.time.by = 30, size = 0.3, tables.height = 0.15,
           ggtheme = theme_light(), pval = T, legend.labs = c("Not Smoking", "Smoking"))+labs(title="Kaplan-Meier Curves", surv.median.line = "hv")
ggsurv <- ggpar(ggsurv,font.title = c(16, "bold", "darkblue"))
dev.off()
