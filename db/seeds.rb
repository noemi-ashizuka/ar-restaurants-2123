# This is where you can create initial data for your app.

require 'faker'

Restaurant.destroy_all

puts 'Creating restaurants...'
# tour_d_argent = Restaurant.new(name: "La Tour d'Argent")
# tour_d_argent.save!

# chez_gladines = Restaurant.new(name: 'Chez Gladines')
# chez_gladines.save!

100.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    rating: rand(0..5)
  )
end
puts 'Finished!'
