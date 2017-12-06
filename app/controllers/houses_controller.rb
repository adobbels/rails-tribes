class HousesController < ApplicationController
  def index
    # @houses = House.all
    @houses = policy_scope(House )
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
    @house.save
  end

  def create
    @house = House.new(house_params)
    @house.save
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
