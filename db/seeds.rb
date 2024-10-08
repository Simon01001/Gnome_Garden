puts "Cleaning DB..."
# branchsdfsd fsdf
Booking.destroy_all

Gnome.destroy_all

User.destroy_all

puts "Creating users..."

users = []

users << User.create!(email: 'user1@example.com', password: 'password123')
users << User.create!(email: 'user2@example.com', password: 'password123')
users << User.create!(email: 'user3@example.com', password: 'password123')

puts "Creating gnomes..."

Gnome.create!(name: "Gnome with spade", description: "A gnome with a spade", price: 9.99, user: users.sample)

Gnome.create!(name: "Gnome with hat", description: "A gnome with a big red hat", price: 10.99, user: users.sample)

Gnome.create!(name: "Gnome with fishing rod", description: "A gnome holding a fishing rod", price: 12.99, user: users.sample)

Gnome.create!(name: "Gnome reading book", description: "A gnome sitting and reading a book", price: 8.99, user: users.sample)

Gnome.create!(name: "Gnome with lantern", description: "A gnome holding a small lantern", price: 11.50, user: users.sample)

Gnome.create!(name: "Gnome with watering can", description: "A gnome with a watering can", price: 9.50, user: users.sample)

Gnome.create!(name: "Gnome sitting on mushroom", description: "A gnome sitting on a big mushroom", price: 13.99, user: users.sample)

Gnome.create!(name: "Gnome with wheelbarrow", description: "A gnome pushing a wheelbarrow", price: 10.75, user: users.sample)

Gnome.create!(name: "Gnome with shovel", description: "A gnome holding a small shovel", price: 9.00, user: users.sample)

Gnome.create!(name: "Gnome with flowers", description: "A gnome holding a bouquet of flowers", price: 12.50, user: users.sample)


puts "Seed created! #{User.all.count} users created & #{Gnome.all.count} gnomes created."
