class PaymentsController < ApplicationController
  before_action :set_order

  def new
    skip_authorization
  end

  def create
    skip_authorization
    # days_to_next_payment = (current_user.profile.bookings.last.start_date - DateTime.now.strftime("%m/%d/%Y").to_date).to_i
  # check whether or not if customer already exists in stripe
    customers = Stripe::Customer.all
    if customers.data.empty?
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )
    else

      customer = customers.data.find { |customer| customer.email == current_user.email }

      unless customer
        customer = Stripe::Customer.create(
          source: params[:stripeToken],
          email:  params[:stripeEmail]
        )
      end

    end

    subscription = Stripe::Subscription.create(
      customer: customer.id,
      # days_until_due: days_to_next_payment,
      items: [
        {
          plan: "location plan for #{House.find(@order.house_id).name} - #{House.find(@order.house_id).planid}"
          # plan: House.find(@order.house_id).planid,
        },
      ],
    )

    @order.update(payment: subscription.to_json, state: 'paid')
    booking = current_user.profile.bookings.last
    ###################### TODO Better here to have booking_id in order ####################
    booking.status = 'paid'
    booking.save

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



