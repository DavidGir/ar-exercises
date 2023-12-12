require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Ask the user for a store name
puts "Please enter a store name: "
# Retrieve input name 
store_name = gets.chomp 
# Create object instantiation
new_store = Store.new(name: store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Error: Could not create store."
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
