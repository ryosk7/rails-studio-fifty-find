class BookingsController < ApplicationController
  before_action :set_studio, only: [:new, :create]
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_user, only: [:create, :show, :index]

  def index
    @bookings = Booking.where(user: @user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_param)
    @booking.studio = @studio
    @booking.user = @user
    @booking.status = "Pending"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "studios/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.where(user: @user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_path, notice: 'Booking was successfully cancelled.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end

  def booking_param
    params.require(:booking).permit(:member, :date)
  end
end
