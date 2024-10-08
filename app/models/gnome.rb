class Gnome < ApplicationRecord
  has_many :bookings

  validates :name, :description, :price, :image_path, presence: true
  validates :name, uniqueness: true
end
