=begin 
General Task.  stock_picker method that will take in an array of stock 
prices, one for each hypothetical day.  Have it return a pair of days 
showing the best day to buy and sell.  So buy low and sell high and buy
before you sell.
Ex: stock_picker([17,3,6,9,15,8,6,1,10]) 
returns [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(array)
  buyAndSell = []
  #find the lowest price
  lowest = array.min
  buyAndSell.push(array.index(lowest))

  #find the highest price, after the lowest price
  highest = array.max
  buyAndSell.push(array.index(highest))

  #edge cases are lowest day is last day, and higest is first day
  p buyAndSell
end

stock_picker([17,3,6,9,15,8,6]) #should return [1, 4] 15-3 = $12 profit
stock_picker([5, 2, 8, 9, 20, 7, 9])  #should return [1, 4] 20-2= $18 profit