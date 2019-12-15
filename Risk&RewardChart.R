AAPLDaily = diff(log(Cl(AAPL)))
AMZN_sd=sd(data$AMZN.Close, na.rm = TRUE)
HD_sd=sd(data$HD.Close, na.rm = TRUE)
M_sd=sd(data$M.Close, na.rm = TRUE)
AAPL_sd=sd(AAPLDaily, na.rm = TRUE)
GOOGL_sd=sd(data$GOOGL.Close, na.rm = TRUE)

AMZN_mean=mean(data$AMZN.Close, na.rm = TRUE)
HD_mean=mean(data$HD.Close, na.rm = TRUE)
M_mean=mean(data$M.Close, na.rm = TRUE)
AAPL_mean=mean(AAPLDaily, na.rm = TRUE)
GOOGL_mean=mean(data$GOOGL.Close, na.rm = TRUE)

riskgraph=data.frame(rbind(c(AMZN_mean,AMZN_sd),c(HD_mean,HD_sd),c(M_mean,M_sd),c(AAPL_mean,AAPL_sd),c(GOOGL_mean,GOOGL_sd)))

colnames(riskgraph)=c("Mean_Log_Return", "Sd_Log_Return")
Index=c("AMZN","HD","M","AAPL","GOOGL")
riskgraph =cbind(Index,riskgraph)
riskgraph
ggplot()+ labs(title = "Risk vs Reward", x= "Reward",y="Risk")+ 
  geom_point(data=riskgraph,aes(x=Mean_Log_Return,y=Sd_Log_Return,color=Index))
