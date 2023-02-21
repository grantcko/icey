# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning the DB..'
Jewelry.destroy_all
User.destroy_all

u = User.create!(name: "Grant", email: "grant@gmail.com", password: "123123")

Jewelry.create!(
  user: u,
  name: 'Justice Scale Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 30_000
)
Jewelry.create!(user: u, name: 'Grant Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 50_000)
Jewelry.create!(user: u, name: 'Anik Scale Earring', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 10_000)
Jewelry.create!(user: u, name: 'Sexy Taka Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 20_000)
Jewelry.create!(user: u, name: 'Super Sexy Tan Scale Chain', detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world', price: 45_000)
Jewelry.create!(user: u, name: 'Tan sexy than Taka Chain', detail: 'Larger than my actual face, this glorious accessory would evetually take on a whole new world', price: 70_000)

puts "... created #{Jewelry.count} jewelry."
