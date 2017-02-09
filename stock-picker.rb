=begin 
General Task.  stock_picker method that will take in an array of stock 
prices, one for each hypothetical day.  Have it return a pair of days 
showing the best day to buy and sell.  So buy low and sell high and buy
before you sell.
Ex: stock_picker([17,3,6,9,15,8,6,1,10]) 
returns [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(array)
  buyAndSell = [] #array to hold buy and sell days
  currentDay = 0 #hold current day
  buyDay = 0 
  sellDay = 0
  difference = 0 #difference between buy day and sell day in profit

  #iterate through array, from current day
  while currentDay < array.length 
  	array.each_with_index do |sellValue, futureDay| #iterate through future days
  	  #must buy before selling and difference should be greater than previous to profit
 	  if currentDay < futureDay && difference <= sellValue-array[currentDay]
 	  	buyDay = currentDay #set buyDay to current day and sellDay to futureDay
 	  	sellDay = futureDay
 	  	difference = sellValue - array[buyDay] #the new difference is now set
 	  end
  	end
  	currentDay += 1 #add annother to current day so it is a possible buyDay
  end

  #print out the buy day and sell day (in an array form and text)
  buyAndSell.push(buyDay)
  buyAndSell.push(sellDay)
  p buyAndSell
  puts "Buys on #{buyDay} and sells on #{sellDay} for $#{array[sellDay]-array[buyDay]} profit!"
end

#tests
stock_picker([17,3,6,9,15,8,6]) #should return [1, 4] 15-3 = $12 profit
stock_picker([5, 2, 8, 9, 20, 7, 9])  #should return [1, 4] 20-2= $18 profit
stock_picker([50, 10, 6, 9, 20, 39, 9])  #should return [2, 5] 39-6= $33 profit
stock_picker([5, 8, 8, 9, 20, 7, 1])  #should return [0, 4] 20-5= $15 profit
stock_picker([8, 8, 8, 8, 8, 8, 8])  #should return [5, 6] 8-8= $0 profit