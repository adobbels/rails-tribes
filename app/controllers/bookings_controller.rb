class BookingsController < ApplicationController


  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @profile = current_user.profile
    @house = House.find(params[:house_id])
    @booking = Booking.new(booking_params)
    @booking.house = @house
    @booking.profile = @profile
    authorize @booking

    if @booking.start_date.nil?
      flash[:alert] = "Please choose a date !"
      redirect_to house_path(@house)
    elsif @booking.start_date < DateTime.now
      flash[:alert] = "Your booking date can't be in the past !"
      redirect_to house_path(@house)
    else

      if @profile.nil?
        flash[:alert] = 'Please complete your profile before booking.'
        return redirect_to new_profile_path(@profile)
      end


      @profile.attributes.each do |key, value|
        if value.nil? && key != "biography" && key != "photo"
          flash[:alert] = 'Please complete your profile before booking.'
          return redirect_to edit_profile_path(@profile)
        end
      end

      if @booking.save
        flash[:notice] = 'Booking was successfully created.'
        BookingMailer.creation_confirmation(@booking).deliver_now
        BookingAdminMailer.admin_creation_confirmation(@booking).deliver_now
         redirect_to profile_path(@profile)
      else
        flash[:alert] = 'Booking has been not created'
        BookingMailer.no_creation_confirmation(@booking).deliver_now
        BookingAdminMailer.admin_no_creation_confirmation(@booking).deliver_now
        redirect_to house_path(@house)
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

  # def edit
  #   booking = Booking.find(params[:booking])
  #   authorize booking
  #   booking.status = "accept"
  #   booking.save
  #   flash[:notice] = 'Booking Accepted'
  #   redirect_to admin_bookings_path
  # end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end




end
