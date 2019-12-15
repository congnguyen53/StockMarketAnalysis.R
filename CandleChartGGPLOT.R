A = df1 %>%
  ggplot(aes(x = Date, y = AMZN.Close)) +
  geom_candlestick(aes(open = AMZN.Open, high = AMZN.High, low = AMZN.Low, close =AMZN.Close),
                   colour_up = "forestgreen", colour_down = "red",
                   fill_up = "forestgreen", fill_down = "red") +
  geom_ma(color = "gold4", n = 9)  + geom_ma(color = "gray7", n = 180) +
  coord_x_date(xlim = c("2019-06-06", "2019-11-25"),ylim = c(1550, 2100))+
  ggtitle("AMZN") +
  xlab("Date") + ylab("Price") 

B = df1 %>%
  ggplot(aes(x = Date, y = AMZN.Close)) +
  geom_candlestick(aes(open = AMZN.Open, high = AMZN.High, low = AMZN.Low, close =AMZN.Close),
                   colour_up = "forestgreen", colour_down = "red",
                   fill_up = "forestgreen", fill_down = "red") +
  geom_ma(color = "gold4", n = 9)  + geom_ma(color = "gray7", n = 180) +
  coord_x_date(xlim = c("2017-06-06", "2019-11-25"),ylim = c(800, 2100))+
  ggtitle("AMZN") +
  xlab("Date") + ylab("Price") +geom_smooth(method="lm")

