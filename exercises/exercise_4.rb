require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores and find stores with certain revenue/products

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
#puts surrey.inspect

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
#puts whistler.inspect

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
#puts yaletown.inspect

puts Store.count #5

@mens_stores = Store.where(mens_apparel: true)
puts "Mens stockists and revenue"
@mens_stores.each do |store|
  puts store.name
  puts "$#{store.annual_revenue}"
end

#puts @mens_stores.inspect

@women_underperforming = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
puts "Womens stockists under $1m in revenue"
@women_underperforming.each do |store|
  puts store.name
  puts "$#{store.annual_revenue}"
end
#puts @women_underperforming.inspect