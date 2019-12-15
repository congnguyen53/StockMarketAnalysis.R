AMZN_log_returns=AMZN%>%Ad()%>%annualReturn(type='log')*100
GOOGL_log_returns=GOOGL%>%Ad()%>%annualReturn(type='log')*100
AAPL_log_returns=AAPL%>%Ad()%>%annualReturn(type='log')*100
HD_log_returns=HD%>%Ad()%>%annualReturn(type='log')*100
M_log_returns=M%>%Ad()%>%annualReturn(type='log')*100
data2=cbind(AMZN_log_returns,GOOGL_log_returns,AAPL_log_returns,HD_log_returns,M_log_returns)
names(data2)[1] = "AMZN_Return"
names(data2)[2] = "GOOGL_Return"
names(data2)[3] = "AAPL_Return"
names(data2)[4] = "HD_Return"
names(data2)[5] = "M_Return"
data2
