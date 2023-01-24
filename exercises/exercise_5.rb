require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Find sum of all stores revenue

@sum_of_all_stores_rev = Store.sum("annual_revenue")
puts "Stores revenue total = $#{@sum_of_all_stores_rev}"

#Find average annual revenue for all stores
puts "Average yearly revenue across all stores = $#{@sum_of_all_stores_rev/Store.count}"

#Find the number of stores generating more than $1m in rev
@no_of_stores_over_million = Store.where("annual_revenue > 1000000").count
puts "#{@no_of_stores_over_million} stores have a sales revenue over $1m yearly"