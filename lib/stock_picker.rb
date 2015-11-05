def stock_picker(prices)
  day1 = 0
  greatest_profit = nil
  best_days = []
  while day1 < prices.length - 1
    day2 = day1 + 1
    while day2 < prices.length
      current_profit = prices[day2] - prices[day1]
      if greatest_profit.nil? || current_profit > greatest_profit
        greatest_profit = current_profit
        best_days = [day1, day2]
      end
      day2 += 1
    end
    day1 += 1
  end
  best_days
end
