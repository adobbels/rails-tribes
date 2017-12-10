class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :send_welcome_email
  after_create :plan_creation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  def name
    email
  end


def create_stripe_customer
  customer = Stripe::Customer.create(
  :email => email,
)
end


  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
