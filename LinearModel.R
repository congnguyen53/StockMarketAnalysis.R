model = lm(AAPL.Close~ AAPL.Volume, data = df2)
summary(model)
coefficients(model)

model2 = lm(AMZN.Close~ AMZN.Volume, data = df1)
summary(model2)
coefficients(model2)

model3 = lm(GOOGL.Close~ GOOGL.Volume, data = df3)
summary(model3)
coefficients(model3)

ggplot(data=df2, aes(x=AAPL.Volume, y=AAPL.Close))+geom_point()+geom_smooth(method="lm")
ggplot(data=df1, aes(x=AMZN.Volume, y=AMZN.Close))+geom_point()+geom_smooth(method="lm")
ggplot(data=df3, aes(x=GOOGL.Volume, y=GOOGL.Close))+geom_point()+geom_smooth(method="lm")
