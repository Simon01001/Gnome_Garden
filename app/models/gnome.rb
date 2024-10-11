class Gnome < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, :description, :price, presence: true
  validates :name, uniqueness: true
end
