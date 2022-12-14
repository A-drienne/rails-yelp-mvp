# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning data ..."

Restaurant.destroy_all

puts "... Seeding data ..."

# categories = %w[chinese italian japanese french belgian]

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Created #{restaurant.name}"

  Review.create(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant: restaurant
  )
end
puts "Finito"
