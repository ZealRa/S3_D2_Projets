
def day_trader(prices)
  max_profit= 0
  best_buy_day = 0
  best_sell_day = 0

  (0..prices.length).each do |buy_day|
    (buy_day..prices.length).each do |sell_day|
      if prices[sell_day] && prices[buy_day]
        profit = prices[sell_day] - prices[buy_day]
        if profit > max_profit
          max_profit = profit
          best_buy_day = buy_day
          best_sell_day = sell_day
        end
      end
    end
end
max_profit > 0 ? [best_buy_day, best_sell_day] : nil
end