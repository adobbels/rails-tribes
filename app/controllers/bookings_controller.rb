class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @house = Booking.new
    authorize @booking
  end

  def create
    @profile = current_user.profile
    @house = House.find(params[:house_id])
    @booking = Booking.new(booking_params)
    @booking.house = @house
    @booking.profile = @profile
    authorize @booking
    if @profile.nil?
      flash[:alert] = 'Please complete your profile before booking.'
      redirect_to new_profile_path(@profile)
    else
      if @profile.attributes.each do |key, value|
        if value.nil?
          flash[:alert] = 'Please complete your profile before booking.'
          redirect_to edit_profile_path(@profile)
        else
          flash[:alert] = 'Booking was successfully created.'
          redirect_to profile_path(@profile)
        end
      end
      end
    end
  end

  def edit
     @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to house_path(@house)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
