class HousesController < ApplicationController
  def index

    @houses = policy_scope(House)
    authorize @houses
    skip_authorization


    @houses = House.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      # marker.infowindow render_to_string(partial: "/houses/map_box", locals: { house: house })
    end
  end

  def show
    @house = House.find(params[:id])
    #authorize @house
    skip_authorization

    @house_coordinates = { lat: @house.latitude, lng: @house.longitude }
    @markers = Gmaps4rails.build_markers(@house) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      # marker.infowindow render_to_string(partial: "/houses/map_box", locals: { house: house })
    end
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

  private
  def house_params
  params.require(:house).permit(:name, :price_cents, :capacity, :description, :photos [], :address, :post_code, :city, :country)
  end
end
