class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :gnomes, through: :bookings

  has_many :gnomes_owners
  has_many :gnomes, through: :gnomes_owners

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
