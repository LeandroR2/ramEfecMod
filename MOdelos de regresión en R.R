install.packages("dynlm")
library(dynlm)
install.packages("AER")
library("AER")

data("USMacroG")
print(USMacroG)

plot(USMacroG[, c("dpi", "consumption")], lty = c(3,1), 
     plot.type = "single", ylab = "")

legend("topleft", legend = c("Income", "Consumption"), lty = c(3,1), bty = "n")


#Modelo series de tiempo
# IDH = B1 + B2InvEjecPC

idh_st <- dynlm(IDH ~ InvEjecPC, data = DB_Mavila)
summary(idh_st)


EspVid_st <- dynlm(EspVid ~ InvEjecPC, data = DB_Mavila)
summary(EspVid_st)

AñosEsc_st <- dynlm(AñosEsc ~ InvEjecPC, data = DB_Mavila)
summary(AñosEsc_st)

AñosEsc_st <- dynlm(AñosEsc ~ InvEjecPC, data = DB_Mavila)
summary(AñosEsc_st)

IngFamPcap1_st <- dynlm(IngFamPcap1 ~ InvEjecPC, data = DB_Mavila)
summary(IngFamPcap1_st)


