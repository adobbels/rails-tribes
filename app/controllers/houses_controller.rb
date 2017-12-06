class HousesController < ApplicationController
  def index
    # @houses = House.all
    @houses = policy_scope(House)
    authorize @houses
  end

  def show
    @house = House.find(params[:id])
    authorize @house
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
  params.require(:house).permit(:name, :price, :capacity, :description, :photos, :address, :post_code, :city, :country)
  # To be updated
  end
end
