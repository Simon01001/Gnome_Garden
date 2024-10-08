class Gnome < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :price, presence: true
  validates :name, uniqueness: true
end
