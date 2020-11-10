require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel:true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel:false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel:false)
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
pp @mens_stores

@mens_stores.each do |m|
  puts "#{m.name} $#{m.annual_revenue}"
end

@womens_stores.each do |w|
  puts "#{w.name} $#{w.annual_revenue}"
end
