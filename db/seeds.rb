# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'Chinese', phone_number: '1234 4321' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'French', phone_number: '1234 4321' }
pizza_west = { name: 'Pizza West', address: '28B Shoreditch High St, Muckwidth E1 6PQ', category: 'Italian', phone_number: '1234 4321' }
mc_donald = { name: 'McDonald', address: 'Woodlands', category: 'Italian', phone_number: '1234 4321' }
burger_king = { name: 'BurgerKing', address: 'Admiralty', category: 'Japanese', phone_number: '1234 4321' }

[dishoom, pizza_east, pizza_west, mc_donald, burger_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
