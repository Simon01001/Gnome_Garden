class Booking < ApplicationRecord
  belongs_to :gnome
  belongs_to :user

  validates :booking_date, presence: true
end
