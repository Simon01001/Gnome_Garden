puts "Cleaning DB..."

Booking.destroy_all

Gnome.destroy_all

puts "Creating gnomes..."

Gnome.create!(name: "Gnome with spade", description: "A gnome with a spade", price: 9.99)

Gnome.create!(name: "Gnome with hat", description: "A gnome with a big red hat", price: 10.99)

Gnome.create!(name: "Gnome with fishing rod", description: "A gnome holding a fishing rod", price: 12.99)

Gnome.create!(name: "Gnome reading book", description: "A gnome sitting and reading a book", price: 8.99)

Gnome.create!(name: "Gnome with lantern", description: "A gnome holding a small lantern", price: 11.50)

Gnome.create!(name: "Gnome with watering can", description: "A gnome with a watering can", price: 9.50)

Gnome.create!(name: "Gnome sitting on mushroom", description: "A gnome sitting on a big mushroom", price: 13.99)

Gnome.create!(name: "Gnome with wheelbarrow", description: "A gnome pushing a wheelbarrow", price: 10.75)

Gnome.create!(name: "Gnome with shovel", description: "A gnome holding a small shovel", price: 9.00)

Gnome.create!(name: "Gnome with flowers", description: "A gnome holding a bouquet of flowers", price: 12.50)


puts "Seed created! #{Gnom.all.count} gnomes created."
