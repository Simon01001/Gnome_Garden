class PagesController < ApplicationController
  def home
  end

  def mybookings
    user = current_user
    @bookings = user.bookings
      
  def my_profile
    @gnomes = Gnome.where(user:current_user)
  end
end
