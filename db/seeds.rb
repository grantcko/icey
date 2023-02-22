require "open-uri"
puts 'Cleaning the DB..'
Rental.destroy_all
Jewelry.destroy_all
User.destroy_all
photo_array = ["https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey027_k0xkxl.jpg"]

def url_file

end
grant = User.create!(
  name: "Grant",
  email: "grant@gmail.com",
  password: "123123"
)
5.times do
file = URI.open(photo_array.sample)
jewelry = Jewelry.new(name: "faker", detail: "A great console", price: 5000)
jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
jewelry.user = grant
jewelry.save
end


# url = photo_array.sample
# type = url.split('.').last
# file = URI.open(url)
# jewelry.photo.attach(io: file, filename:"faker.#{type}", content_type: "image/#{type}")

# jewelry.save


taka = User.create!(
  name: "Taka",
  email: "taka@gmail.com",
  password: "123123"
)

puts "... created #{User.count} users."

jew1 = Jewelry.create!(
  user: grant,
  name: 'Grant Scale Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 50_000
)
jew2 = Jewelry.create!(
  user: grant,
  name: 'Anik Scale Earring',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 10_000
)
jew3 = Jewelry.create!(
  user: grant,
  name: 'Sexy Taka Scale Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 20_000
)
jew4 = Jewelry.create!(
  user: taka,
  name: 'Super Sexy Tan Scale Chain',
  detail: 'Larger than my actual face, this glorious accessory would eventually take on a whole new world',
  price: 45_000
)
jew5 = Jewelry.create!(
  user: taka,
  name: 'Tan sexy than Taka Chain',
  detail: 'Larger than my actual face, this glorious accessory would evetually take on a whole new world',
  price: 70_000
)

puts "... created #{Jewelry.count} jewelries."

Rental.create!(
  user: grant,
  jewelry: jew2,
  status: 2,
  start_date: Date.today,
  end_date: Date.today + 20
)
Rental.create!(
  user: grant,
  jewelry: jew3,
  status: 1,
  start_date: Date.today,
  end_date: Date.today + 4
)
Rental.create!(
  user: taka,
  jewelry: jew4,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 22
)
Rental.create!(
  user: taka,
  jewelry: jew5,
  status: 1,
  start_date: Date.today,
  end_date: Date.today + 15
)
Rental.create!(
  user: taka,
  jewelry: jew1,
  status: 0,
  start_date: Date.today,
  end_date: Date.today + 10
)

puts "... created #{Rental.count} rentals."
