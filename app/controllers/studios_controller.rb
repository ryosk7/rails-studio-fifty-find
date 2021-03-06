class StudiosController < ApplicationController
  before_action :set_user, only: [:new, :create, :edit, :update, :owner_list]
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  def index
    # Studio.joins(:bookings).where.not(bookings: { date: date})

    @date = params[:date]
    if @date == "" || @date.nil?
      @studios = Studio.where.not(latitude: nil, longitude: nil)

    else
      date = @date.split("/")
      formatted_date = "#{date[2]}-#{date[0]}-#{date[1]}"
      session[:date] = formatted_date
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
    @booking = Booking.new
    if session[:date]
      date = Date.parse(session[:date])
      @booking.date = date
    end

  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_param)
    @studio.user = @user
    if @studio.save
      redirect_to studios_owner_list_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @studio.update(studio_param)
    redirect_to studios_owner_list_path
  end

  def destroy
    @studio.destroy
    redirect_to studios_owner_list_path
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_param
    params.require(:studio).permit(:name, :location, :price, :description, :capacity, :photo, :photo_cache)
  end
end
