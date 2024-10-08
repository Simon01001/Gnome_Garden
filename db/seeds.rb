puts "Cleaning DB..."

Booking.destroy_all

Gnome.destroy_all

User.destroy_all



puts "Creating user..."


unless User.exists?(email: 'user1@example.com')
  User.create!(
    email: 'user1@example.com',
    password: 'password123',
    password_confirmation: 'password123'
  )
end


puts "Seed created! #{User.all.count} user(s) created"
