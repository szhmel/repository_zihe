#! /usr/local/bin/Rscript

library(survminer)
library(survival)
png("fig1.png")

km_model2 <- survfit(Surv(time, DEATH_EVENT) ~ as.factor(smoking), data = df)
options(repr.plot.width = 18, repr.plot.height = 8)
ggsurv <- ggsurvplot(km_model2, data = df, conf.int = TRUE,
           break.time.by = 30, size = 0.3, tables.height = 0.15,
           ggtheme = theme_light(), pval = T, legend.labs = c("Not Smoking", "Smoking"))+labs(title="Kaplan-Meier Curves", surv.median.line = "hv")
ggsurv <- ggpar(ggsurv,font.title = c(16, "bold", "darkblue"))
dev.off()
