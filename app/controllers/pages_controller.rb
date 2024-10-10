class PagesController < ApplicationController
  def home
  end

  def my_profile
    @gnomes = Gnome.where(user:current_user)
  end
end
