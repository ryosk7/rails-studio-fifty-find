class BookingsController < ApplicationController
  before_action :set_studio, only: [:new, :create]
  before_action :set_user, only: [:index, :create]

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
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
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
