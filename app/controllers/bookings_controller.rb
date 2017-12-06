class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @house = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize(@house)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
