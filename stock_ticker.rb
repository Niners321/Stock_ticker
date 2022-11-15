def stock_picker(prices)
  output = [0, 0]
  prices.each_with_index do |price, index|
    prices[index...].each_with_index do |price2, index2|
      output = [index, index2 + index] if price2 - price > prices[output[1].to_i] - prices[output[0].to_i]
    end
  end
  output
end


puts stock_picker([17,3,6,9,15,8,6,1,10])