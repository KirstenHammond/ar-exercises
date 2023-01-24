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

class Employee < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true}

end


class Store < ActiveRecord::Base

  validates :name, presence: true, length: {minimum: 5}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}

end

puts "Please enter a store name"
input = gets.chomp

newStore = Store.create(name: input)
puts newStore.errors
 