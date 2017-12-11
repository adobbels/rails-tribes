class PaymentsController < ApplicationController
  before_action :set_order

  def new
    skip_authorization
  end

  def create
    skip_authorization

    #first try to retrive a customer and if not created yet, then create it
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    subscription = Stripe::Subscription.create(
      :customer => customer.id,
      # :current_period_start => current_user.profile.bookings.last.start_date,
      :items => [
        {
          :plan => House.find(@order.house_id).planid,
        },
      ],
    )
    # charge = Stripe::Charge.create(
    #   customer:     customer.id,   # You should store this customer id and re-use it.
    #   amount:       @order.amount_cents,
    #   description:  "Payment for House #{@order.house_id} for order #{@order.id}",
    #   currency:     @order.amount.currency
    # )

    @order.update(payment: subscription.to_json, state: 'paid')
    current_user.profile.bookings.last.status = 'paid'
    fail
    redirect_to order_path(@order)

    rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

private

  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
  end
end



