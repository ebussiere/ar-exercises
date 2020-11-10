require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
@store2 = Store.find_by(id: 2)
# Your code goes here ...
@store1.employees.create(store_id: 1, first_name: "Eddy", last_name: "Bussiere", hourly_rate: 60)
@store1.employees.create(store_id: 1, first_name: "Charlie", last_name: "Harper", hourly_rate: 160)
@store1.employees.create(store_id: 1, first_name: "Betty", last_name: "Crocker", hourly_rate: 50)

@store2.employees.create(store_id: 1, first_name: "Donald", last_name: "Trump", hourly_rate: 50)
@store2.employees.create(store_id: 1, first_name: "Frank", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(store_id: 1, first_name: "Aunt", last_name: "Jemima", hourly_rate: 70)