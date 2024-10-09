class GnomesController < ApplicationController
  def index
    @gnomes = Gnome.all
  end

  def show
    @gnome = Gnome.find(params[:id])
  end

  def new
    @gnome = Gnome.new
  end

  def create
    @gnome = Gnome.new(gnome_params)
    @gnome.user = current_user
    if @gnome.save
      redirect_to gnomes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def gnome_params
    params.require(:gnome).permit(:name, :description, :price, :image_path)
  end
end
