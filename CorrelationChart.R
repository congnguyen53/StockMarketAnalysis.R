data=cbind(diff(log(Cl(GOOGL))),diff(log(Cl(AMZN))),diff(log(Cl(M))),diff(log(Cl(HD))))
chart.Correlation(data)
