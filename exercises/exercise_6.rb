require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Johnson", hourly_rate: 55)

# Employees for @store2
@store2.employees.create(first_name: "Carol", last_name: "Brown", hourly_rate: 58)
@store2.employees.create(first_name: "Dave", last_name: "Wilson", hourly_rate: 53)

pp @store1.employees
pp @store2.employees