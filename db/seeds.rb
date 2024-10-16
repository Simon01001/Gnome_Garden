puts "Cleaning DB..."
# branchsdfsd fsdf
# sdfsdf
Booking.destroy_all

Gnome.destroy_all

User.destroy_all

puts "Creating users..."

users = []

users << User.create!(email: 'user1@example.com', password: 'password123')
users << User.create!(email: 'user2@example.com', password: 'password123')
users << User.create!(email: 'user3@example.com', password: 'password123')

puts "Creating gnomes..."

gnomes = []

gnomes << Gnome.create!(name: "Hoggle", description: "A gnome with a spade", price: 9.99, user: users.sample, image_path: "gnome1.jpeg")

gnomes << Gnome.create!(name: "Quill", description: "A gnome with a big red hat", price: 10.99, user: users.sample, image_path: "gnome2.jpeg")

gnomes << Gnome.create!(name: "Mirth", description: "A gnome holding a fishing rod", price: 12.99, user: users.sample, image_path: "gnome3.jpeg")

gnomes << Gnome.create!(name: "Perrin", description: "A gnome sitting and reading a book", price: 8.99, user: users.sample, image_path: "gnome4.jpeg")

gnomes << Gnome.create!(name: "Roscoe", description: "A gnome holding a small lantern", price: 11.59, user: users.sample, image_path: "gnome5.jpeg")

gnomes << Gnome.create!(name: "Zook", description: "A gnome with a watering can", price: 9.59, user: users.sample, image_path: "gnome6.jpeg")

gnomes << Gnome.create!(name: "Eldon", description: "A gnome sitting on a big mushroom", price: 13.99, user: users.sample, image_path: "gnome7.jpeg")

gnomes << Gnome.create!(name: "Nimble", description: "A gnome pushing a wheelbarrow", price: 10.75, user: users.sample, image_path: "gnome8.jpeg")

gnomes << Gnome.create!(name: "Ripplewink", description: "A gnome holding a small shovel", price: 8.99, user: users.sample, image_path: "gnome9.jpeg")

gnomes << Gnome.create!(name: "Yarnyarn", description: "A gnome holding a bouquet of flowers", price: 12.59, user: users.sample, image_path: "gnome10.jpeg")

puts "Creating bookings..."

bookings = []

bookings << Booking.create!(booking_date: Date.today + 1, user: users.sample, gnome: gnomes.sample)
bookings << Booking.create!(booking_date: Date.today + 2, user: users.sample, gnome: gnomes.sample)
bookings << Booking.create!(booking_date: Date.today + 3, user: users.sample, gnome: gnomes.sample)
bookings << Booking.create!(booking_date: Date.today + 4, user: users.sample, gnome: gnomes.sample)
bookings << Booking.create!(booking_date: Date.today + 5, user: users.sample, gnome: gnomes.sample)

puts "Seed created! #{User.all.count} users created & #{Gnome.all.count} gnomes created & #{Booking.all.count} bookings created."
