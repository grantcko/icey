require "open-uri"
puts 'Cleaning the DB..'
Rental.destroy_all
Jewelry.destroy_all
User.destroy_all
photo_array = [
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey027_k0xkxl.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey021_rze1wf.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey026_xk85xs.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032629/Icey%20Bling-Bling/icey004_prsqnr.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032604/Icey%20Bling-Bling/icey016_fuklot.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032604/Icey%20Bling-Bling/icey020_u8ayes.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032604/Icey%20Bling-Bling/icey011_k6rcyp.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey006_gk53bo.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey005_ctrlo8.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey010_wakqic.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey008_vt1tqe.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey009_igzyt2.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032604/Icey%20Bling-Bling/icey017_ocukyi.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032604/Icey%20Bling-Bling/icey019_gxt1tu.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032629/Icey%20Bling-Bling/icey002_hxic1s.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey025_yifybo.jpg"
]

def url_file
end
taka = User.create!(
  name: "taka",
  email: "taka@gmail.com",
  password: "123123"
  )

grant = User.create!(
  name: "grant",
  email: "grant@gmail.com",
  password: "123123"
  )

tan = User.create!(
  name: "tan",
  email: "tan@gmail.com",
  password: "123123"
  )

anik = User.create!(
name: "anik",
email: "anik@gmail.com",
password: "123123"
)

puts "... created #{User.count} users."


jewelries = ['Watch', 'Gold Watch', 'Diamond Necklace', 'Chain', 'Small Chain', 'Big Chain', 'Ring', 'Necklace', 'Bracelet']
12.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: "A great console", price: 5000)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = grant
  jewelry.save
end

puts "... created #{Jewelry.count} jewelries."




# url = photo_array.sample
# type = url.split('.').last
# file = URI.open(url)
# jewelry.photo.attach(io: file, filename:"faker.#{type}", content_type: "image/#{type}")

# jewelry.save


6.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: "A great console", price: 5000)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = grant
  jewelry.save
  Rental.create!(
    user: [taka, tan, anik].sample,
    jewelry: Jewelry.last,
    status: [0, 1, 2].sample,
    start_date: Date.today,
    end_date: Date.today + 20
  )
end

6.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: "A great console", price: 5000)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = taka
  jewelry.save
  Rental.create!(
    user: [grant, tan, anik].sample,
    jewelry: Jewelry.last,
    status: [0, 1, 2].sample,
    start_date: Date.today,
    end_date: Date.today + 20
  )
end

6.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: "A great console", price: 5000)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = anik
  jewelry.save
  Rental.create!(
    user: [taka, tan, grant].sample,
    jewelry: Jewelry.last,
    status: [0, 1, 2].sample,
    start_date: Date.today,
    end_date: Date.today + 20
  )
end


6.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: "A great console", price: 5000)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = tan
  jewelry.save
  Rental.create!(
    user: [taka, grant, anik].sample,
    jewelry: Jewelry.last,
    status: [0, 1, 2].sample,
    start_date: Date.today,
    end_date: Date.today + 20
  )
end

puts "... created #{Rental.count} rentals."
