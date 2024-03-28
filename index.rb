def stock_picker(insert_array)
  buy_index = 0
  sell_index = 0
  max_profit = 0

  insert_array.each_with_index do |buy_price, buy_idx|
    (buy_idx + 1).upto(insert_array.length - 1) do |sell_idx|
      sell_price = insert_array[sell_idx]
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        buy_index = buy_idx
        sell_index = sell_idx
      end
    end
  end

  return [buy_index, sell_index]
end
