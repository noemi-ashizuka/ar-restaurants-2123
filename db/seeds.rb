require 'faker'

# puts 'Creating restaurants...'
# tour_d_argent = Restaurant.new(name: "La Tour d'Argent")
# tour_d_argent.save!

# chez_gladines = Restaurant.new(name: "Chez Gladines")
# chez_gladines.save!
# puts 'Finished!'

puts "Creating 100 restaurants..."

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    rating: rand(0..5)
  )
  # restaurant.save!
end

puts "Done"
