require "open-uri"
require 'nokogiri'

photos = {
  big_chain: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/big-chain-1_khzbao.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/big-chain-1_khzbao.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/big-chain-3_cmqslx.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/big-chain-3_cmqslx.webp'
  ],

  chain: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/chain-1_qkqa7n.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212212/chain-2_elruqu.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/chain-3_vdhleo.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/chain-4_svzug8.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/chain-5_knbnlg.jpg'
  ],

  small_chain: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/small-chain-1_pl8nhh.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/small-chain-2_nluyri.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/small-chain-3_vtu8ih.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212132/small-chain-4_uycczj.webp'
  ],

  ring: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/ring-1_itawev.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/ring-2_zhfish.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/ring-3_fbilju.webp',
  ],

  necklace: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-1_dk0fae.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-2_rimgv8.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-3_ujk0f2.avif',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-4_b9rruf.avif',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-5_htdum1.avif',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-6_ktc4ti.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212210/necklace-7_qwe2sd.jpg'
  ],

  bracelet: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677212211/bracelet-1_z8nk0n.jpg'
  ],

  watch: [
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213338/watch-1_bwqbqi.avif',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213338/watch-2_y9usyb.avif',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213338/watch-3_h8tefi.jpg',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213338/watch-4_psf4un.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213338/watch-5_vb4ajs.webp',
    'https://res.cloudinary.com/dw0jec2ls/image/upload/v1677213337/watch-6_qksowa.jpg'
  ]
}

jewelries = [
  'Watch',
  'Necklace',
  'Chain',
  'Ring',
  'Necklace',
  'Bracelet'
]

puts 'Cleaning the DB..'

Rental.destroy_all
Jewelry.destroy_all
User.destroy_all

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

# 12.times do
#   file = URI.open(photo_array.sample)
#   jewelry = Jewelry.new(name: Faker::Cannabis.strain.split.first + " " + jewelries.sample, detail: details.sample, price: prices.sample)
#   jewelry.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
#   jewelry.user = grant
#   jewelry.save
# end

all_users = User.all
all_users.each { |user| puts user.name}

puts "... created #{User.count} users."

details = [
  'BLING BLING to make your life SHINE SHINE',
  'It is great piece of jewelry that you could wear it to special occation',
  'It is sooooo shine that make everyone eyes go blind!!',
  'Nice price, Nice Bling, Awesome Bang',
  'This make you to be the KING/QUEEN of the NIGHT!!',
  'This make everyone want to get with you!!',
  'Make friends finally with this piece',
  'Super high quality',
  'Passes the dimond tester. 100% LEGIT'
]
prices = ['3000','4000', '5000', '8000', '12000', '20000']

36.times do
  jewelry = Jewelry.new(
    name: "#{Faker::Cannabis.strain.split.first} #{jewelries.sample}",
    detail: details.sample,
    price: prices.sample
  )
  type = jewelry.name.split.last.downcase.to_sym

  file_one = URI.open(photos[type].sample)
  file_two = URI.open(photos[type].sample)
  file_three = URI.open(photos[type].sample)

  jewelry.photos.attach(io: file_one, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.photos.attach(io: file_two, filename: "nes.jpg", content_type: "image/jpg")
  jewelry.photos.attach(io: file_three, filename: "nes.jpg", content_type: "image/jpg")

  jewelry.user = [grant, anik, tan, taka].sample
  jewelry.save
  puts Jewelry.last.name
end

puts "... created #{Jewelry.count} jewelries."

# create 2 manual jewelries that look hella nice
