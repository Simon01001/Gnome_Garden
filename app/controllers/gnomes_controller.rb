class GnomesController < ApplicationController
  def index
      @gnomes = Gnome.all
  end

  def show
    @gnome = Gnome.find(params[:id])
    @booking = Booking.new
  end

  def new
    @gnome = Gnome.new
  end

  def create
    @gnome = Gnome.new(gnome_params)
    @gnome.user = current_user
    if @gnome.save
      redirect_to mygnomes_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @gnome = Gnome.find(params[:id])
  end

  def update
    @gnome = Gnome.find(params[:id])
    @gnome.update(gnome_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to mygnomes_path
  end

  def destroy
    @gnome = Gnome.find(params[:id])
    @gnome.destroy
    redirect_to mygnomes_path, status: :see_other, notice: 'Gnome was successfully deleted.'
  end

  private

  def gnome_params
    params.require(:gnome).permit(:name, :description, :price, :image_path)
  end
end
