class OrdersController < ApplicationController
  def create
    skip_authorization
    house = House.find(params[:house_id])
    order  = Order.create!(house_id: house.id, amount: house.price_cents, state: 'pending')
    redirect_to new_order_payment_path(order)
  end

  def show
    skip_authorization
    @order = Order.where(state: 'paid').find(params[:id])
  end
end
