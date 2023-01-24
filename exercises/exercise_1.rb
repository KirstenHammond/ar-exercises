require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create three new stores

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
#puts burnaby.inspect

richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
#puts richmond.inspect

gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
#puts gastown.inspect

puts "#{Store.count} stores in the Stores table"