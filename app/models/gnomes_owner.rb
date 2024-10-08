class GnomesOwner < ApplicationRecord
  belongs_to :gnome
  belongs_to :user
end
