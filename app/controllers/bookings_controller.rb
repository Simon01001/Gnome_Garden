class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @gnome = Gnome.find(params[:gnome_id])
    @booking.gnome = @gnome
    @booking.user = current_user

    if @booking.save
      redirect_to gnome_path(@gnome)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to gnomes_path, status: :see_other
  end

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
