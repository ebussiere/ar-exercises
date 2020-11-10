require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_sales = Store.sum(:annual_revenue)
puts "Total Sales: $#{@total_sales}"
@average_sales = Store.average(:annual_revenue)
puts "Average Sales: $#{@average_sales}"

@stores_over_1m = Store.where("annual_revenue >= 1000000" ).size
puts "Number of stores over $1,000,000 annual sales: #{@stores_over_1m}"
