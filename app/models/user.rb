class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :gnomes
  # SELECT gnomes.* FROM users JOIN gnomes ON users.id= gnomes.user_id

  has_many :booked_gnomes, through: :bookings, source: 'gnome'
  # SELECT gnomes.* FROM users JOIN bookings ON bookings.user_id = users.id JOIN gnomes ON bookings.gnome_id = gnomes.id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
