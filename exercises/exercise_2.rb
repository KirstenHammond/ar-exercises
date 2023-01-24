require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Change the name of two stores

@store1 = Store.find_by(id: 1)
@store1.update(name: "Burnaby Clothes")
puts @store1.inspect

@store2 = Store.find_by(id: 2)
@store2.update(name: "Richmond Clothes")
puts @store2.inspect

