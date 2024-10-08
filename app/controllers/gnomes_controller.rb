class GnomesController < ApplicationController
  def index
    @gnomes = Gnome.all
  end
end
