require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add has_many employees to the Store class via store_id

class Store <ActiveRecord::Base
  has_many :employees, foreign_key: "store_id"
end

#Add belongs_to to employees
class Employee <ActiveRecord::Base
  belongs_to :store, foreign_key: "store_id"
end

#Add new employees to stores 1 and 2
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Emily", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Susan", last_name: "Jones", hourly_rate: 10)
@store2.employees.create(first_name: "Bob", last_name: "Loblaw", hourly_rate: 80)
@store2.employees.create(first_name: "Abraham", last_name: "Lincoln", hourly_rate: 90)
@store2.employees.create(first_name: "Sarah", last_name: "Andrews", hourly_rate: 20)
@store2.employees.create(first_name: "Kirsten", last_name: "Hammond", hourly_rate: 360)