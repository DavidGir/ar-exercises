require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)

Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: nil)

pp @mens_stores
puts "Number of stores having only men's apparel: #{@mens_stores.count}"

# Loop through the stores
@mens_stores.each do |store|
  puts "Store #{store.name} made an annual revenue of #{store.annual_revenue}"
end 

#Fetch stores with womens apparel
@womens_stores = Store.where(womens_apparel: true, mens_apparel: nil).where("annual_revenue < ?", 1000000)


pp @womens_stores
