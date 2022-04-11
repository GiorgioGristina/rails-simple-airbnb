# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'destroing all the flat'
Flat.destroy_all if Rails.env.development?

puts 'db clean'

puts 'strat creating flats'

5.times do
  flat = Flat.create!(
    name: "house of #{Faker::FunnyName.two_word_name}",
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: (10..200).to_a.sample,
    number_of_guest: (1..5).to_a.sample,
  )

  puts "created id #{flat.id} #{flat.name}"
end


