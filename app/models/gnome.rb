class Gnome < ApplicationRecord
  has_many :bookings

  validates :name, :description, :price, presence: true
  validates :name, uniqueness: true
end
