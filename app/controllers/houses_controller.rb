require_relative '../services/nuki_service'

class HousesController < ApplicationController
  def index

    @houses = policy_scope(House)
    authorize @houses
    skip_authorization


    @houses = House.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      marker.infowindow "<p><img src='http://res.cloudinary.com/dwkqph9as/image/upload/c_fill,h_200/#{house.photos[0].path}' height='100'></p>"
    end
    #@bookings_house = Booking.all.where(house_id: @house).where(status: "Validates")
      #@bookings_house = Booking.all.where(house_id: @house).where(status: "pending")
  end

  def show
    @house = House.find(params[:id])
    #authorize @house
    skip_authorization
    @reviews = @house.reviews

    @house_coordinates = { lat: @house.latitude, lng: @house.longitude }
    @markers = Gmaps4rails.build_markers(@house) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      # marker.infowindow render_to_string(partial: "/houses/map_box", locals: { house: house })
    end
    @bookings_house = Booking.all.where(house_id: @house).where(status: "Validates")

    @house_ratings = 0
    @house.reviews.each do |review| @house_ratings += review.rating end
      return @house_ratings
    #@house_features = @house.house_options
    @house_features = @house.features
  end

  def new
    @house = House.new
    authorize @house
  end

  def create
    @house = House.new(house_params)
    authorize(@house)
    if @house.save
      redirect_to @house
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def open
    NukiLock.new.open
  end

  def close
    NukiLock.new.close
  end

  private
  def house_params
  params.require(:house).permit(:name, :price, :capacity, :description, :photos [], :address, :post_code, :city, :country)
  end
end
