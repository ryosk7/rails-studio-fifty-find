class StudiosController < ApplicationController
  before_action :set_user, only: [:new, :create, :owner_list]

  def index
    # Studio.joins(:bookings).where.not(bookings: { date: date})

    date = params[:date]
    if date == ""
      @studios = Studio.where.not(latitude: nil, longitude: nil)

    else
      date = date.split("/")
      formatted_date = "#{date[2]}-#{date[0]}-#{date[1]}"
      parsed_date = Date.parse(formatted_date)
      @studios = Studio.available_for(parsed_date).where.not(latitude: nil, longitude: nil)
    end
    @hash = Gmaps4rails.build_markers(@studios) do |studio, marker|
      marker.lat studio.latitude
      marker.lng studio.longitude
    end

  end

  def owner_list
    @studios = Studio.where(user_id: @user)
  end

  def show
    session[:return_to] = request.url
    @studio = Studio.find(params[:id])
    @booking = Booking.new
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_param)
    @studio.user = @user
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render 'new'
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def studio_param
    params.require(:studio).permit(:name, :location, :price, :description, :capacity, :photo, :photo_cache)
  end
end
