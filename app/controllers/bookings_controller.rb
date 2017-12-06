class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @booking = Booking.new
  end

  def create
    if user_signed_in?
      if current_user.profile.present?
        @profile = current_user.profile
        @house = House.find(params[:house_id])
        @booking = Booking.new(booking_params)
        @booking.house = @house
        @booking.profile = @profile
          if @booking.save
            redirect_to profile_path(@profile)
            flash[:notice] = 'Booking was successfully created.'
          else
            redirect_to new_profile_path
            flash[:alert] = 'Please create a profile before booking.'
          end
      else
        redirect_to new_profile_path
        flash[:alert] = 'Please create a profile before booking.'
      end
    else
      redirect_to user_session_path
      flash[:alert] = 'Please log-in before booking.'
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

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
