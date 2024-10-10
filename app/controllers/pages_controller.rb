class PagesController < ApplicationController
  def home
  end

  def mygnomes
    @gnomes = Gnome.where(user:current_user)
  end

  def mybookings
    user = current_user
    @bookings = user.bookings
  end

  def meettheteam
  end
end
