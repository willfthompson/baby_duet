# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "------------------------------"
puts "--------Creating Sizes--------"
puts "------------------------------"


Size.create(name: "0-3 Months")
Size.create(name: "3-6 Months")
Size.create(name: "6-12 Months")
Size.create(name: "One Size")

puts "------------------------------"
puts "-#{Size.count} sizes created-"
puts "------------------------------"

puts "------------------------------"
puts "------Creating Products-------"
puts "------------------------------"

product = Product.new
product.name = "Test Product 1"
product.price_cents = 1000
product.product_type = "Babygrow"
product.sizes << Size.find(1)
product.sizes << Size.find(2)
product.sizes << Size.find(3)
product.save!

product = Product.new
product.name = "Test Product 2"
product.price_cents = 1000
product.product_type = "Bib"
product.sizes << Size.find(4)
product.save!

puts "------------------------------"
puts "-#{Product.count} products created-"
puts "------------------------------"


# Seed edit
puts "------------------------------"
puts "--------Creating Users--------"
puts "------------------------------"

user = User.new
user.email = "admin@admin.com"
user.password = "password"
user.admin = true
user.save!


puts "------------------------------"
puts "-#{User.count} users created-"
puts "------------------------------"


