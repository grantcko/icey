puts 'Cleaning the DB..'
Rental.destroy_all
Jewelry.destroy_all
User.destroy_all

grant = User.create!(
  name: "Grant",
  email: "grant@gmail.com",
  password: "123123"
)
taka = User.create!(
  name: "Taka",
  email: "taka@gmail.com",
  password: "123123"
)
tan = User.create!(
  name: "Tan",
  email: "tan@gmail.com",
  password: "123123"
)
anik = User.create!(
  name: "Anik",
  email: "anik@gmail.com",
  password: "123123"
)

puts "... created #{User.count} users."

jew1 = Jewelry.create!(
  user: grant,
  name: 'Classic Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 50_000
)
jew2 = Jewelry.create!(
  user: grant,
  name: 'Big Boss Earring',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 10_000
)
jew3 = Jewelry.create!(
  user: grant,
  name: 'Diamond Ring',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 20_000
)
jew4 = Jewelry.create!(
  user: taka,
  name: 'Super Sexy Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 45_000
)
jew5 = Jewelry.create!(
  user: taka,
  name: 'Dollar Sign Chain',
  detail: 'Larger than my actual face, this glorious accessory would evetually take on a whole new world',
  price: 70_000
)

puts "... created #{Jewelry.count} jewelries."

Rental.create!(
  user: tan,
  jewelry: jew2,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 20
)
Rental.create!(
  user: tan,
  jewelry: jew3,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 4
)
Rental.create!(
  user: anik,
  jewelry: jew4,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 22
)
Rental.create!(
  user: anik,
  jewelry: jew5,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 15
)
Rental.create!(
  user: tan,
  jewelry: jew1,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 10
)

puts "... created #{Rental.count} rentals."
