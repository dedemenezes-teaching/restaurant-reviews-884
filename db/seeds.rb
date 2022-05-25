require 'faker'

puts "Cleaning database"

  Restaurant.destroy_all

puts 'Database Clean'

puts 'Creating Restaurants'

50.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: (1..5).to_a.sample,
    chef_name: ['Agathe', 'Alexandre', 'Arthur', 'Adriana'].sample
  )
  puts restaurant.name
end

puts "Finished"
