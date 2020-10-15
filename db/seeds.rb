# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pequim = { name: "Pequim", address: "7 Boundary St, London E2 7JE", phone_number: 12345678, category: "chinese", rating: 5 }
baggio = { name: "Baggio", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 0234567, category: "italian", rating: 4 }
honda = { name: "Honda", address: "9 Boundary St, London E2 7JE", phone_number: 12345678, category: "japanese", rating: 2 }
zidane = { name: "Zidane", address: "10 Boundary St, London E2 7JE", phone_number: 43345678, category: "french", rating: 4 }
lukaku = { name: "Lukaku", address: "11 Boundary St, London E2 7JE", phone_number: 14345678, category: "belgian", rating: 3 }

[ pequim, baggio, honda, zidane, lukaku ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
