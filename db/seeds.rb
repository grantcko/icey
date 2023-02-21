# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning the DB..'
Jewelry.destroy_all

Jewelry.create(name: 'Justice Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 30_000)
Jewelry.create(name: 'Grant Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 50_000)
Jewelry.create(name: 'Anik Scale Earring', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 10_000)
Jewelry.create(name: 'Sexy Taka Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 20_000)
Jewelry.create(name: 'Super Sexy Tan Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 45_000)
Jewelry.create(name: 'Tan sexy than Taka Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 70_000)

puts "... created #{Jewelry.count} jewelry."
