class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
  end

  def about
  end

  def cancel_check
  end

  def cancel_subscription
    @profile = current_user.profile
    @orders = current_user.orders
    booking = current_user.profile.bookings.last
    booking.status = 'Cancelled'
    booking.save
    stripe_customer_id = JSON.parse(@orders.first.payment)["customer"]
    @customer = Stripe::Customer.retrieve(stripe_customer_id)
    subscription_to_cancel_id = @customer.subscriptions.first.id
    sub = Stripe::Subscription.retrieve(subscription_to_cancel_id)
    sub.delete
    flash[:notice] = 'Hasta Luego cowboy ! Keep safe'
    redirect_to profile_path(@profile)
  end

end
