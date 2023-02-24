require "open-uri"
require 'nokogiri'
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
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey025_yifybo.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032668/Icey%20Bling-Bling/icey031_sup4nm.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032668/Icey%20Bling-Bling/icey032_eway20.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032668/Icey%20Bling-Bling/icey030_ggjvo4.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey023_fsmpde.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032650/Icey%20Bling-Bling/icey024_sdiv4x.jpg",
"https://res.cloudinary.com/dn2mnawil/image/upload/v1677032603/Icey%20Bling-Bling/icey007_inamrs.jpg"
]

5.times do
  user = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.safe_email,
  password: '123123', # needs to be 6 digits,
  # add any additional attributes you have on your model
)
  url = 'https://this-person-does-not-exist.com/en'
  doc = Nokogiri::HTML(URI.open(url).read)
  src = doc.search('#avatar').first['src']
  p photo_url = "https://this-person-does-not-exist.com#{src}"
  file = URI.open(photo_url)
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

taka = User.create!(
  name: "taka",
  email: "taka@gmail.com",
  password: "123123"
  )
  p photo_url = "https://avatars.githubusercontent.com/u/117798839?v=4"
  file = URI.open(photo_url)
  taka.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

grant = User.create!(
  name: "grant",
  email: "grant@gmail.com",
  password: "123123"
  )
  p photo_url = "https://avatars.githubusercontent.com/u/121933082?v=4"
  file = URI.open(photo_url)
  grant.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

tan = User.create!(
  name: "tan",
  email: "tan@gmail.com",
  password: "123123"
  )
  p photo_url = "https://avatars.githubusercontent.com/u/121886405?v=4"
  file = URI.open(photo_url)
  tan.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
anik = User.create!(
  name: "Anik",
  email: "anik@gmail.com",
  password: "123123"
)
  p photo_url = "https://avatars.githubusercontent.com/u/80834097?v=4"
  file = URI.open(photo_url)
  anik.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
puts "... created #{User.count} users."

jewelries = ['Watch', 'Gold Watch', 'Diamond Necklace', 'Chain', 'Small Chain', 'Big Chain', 'Ring', 'Necklace', 'Bracelet']
details = [
  'BLING BLING to make your life SHINE SHINE',
  'It is great piece of jewelry that you could wear it to special occation',
  'It is sooooo shine that make everyone eyes go blind!!'
]
prices = ['3000','4000', '5000', '8000', '12000', '20000']

12.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: details.sample, price: prices.sample)
  jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.user = grant
  jewelry.save
end

puts "... created #{Jewelry.count} jewelries."

6.times do
  file = URI.open(photo_array.sample)
  jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: details.sample, price: prices.sample)
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
  jewelry = Jewelry.new(
    name: "#{Faker::Cannabis.strain.split.first} #{jewelries.sample}",
     detail: details.sample,
     price: prices.sample
  )
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
  jewelry = Jewelry.new(
    name: "#{Faker::Cannabis.strain.split.first} #{jewelries.sample}",
    detail: details.sample,
    price: prices.sample
  )
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

  jewelry = Jewelry.new(
    name: "#{Faker::Cannabis.strain.split.first} #{jewelries.sample}",
    detail: details.sample,
    price: prices.sample
  )

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
