require "stripe"

class House < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?
  after_create :plan_creation
  has_attachments :photos, maximum: 15

  has_many :bookings
  has_many :house_options
  has_many :reviews
  has_many :features, through: :house_options

  monetize :price_cents

  def full_address
    "#{address} #{post_code} #{city} #{country}"
  end


  def plan_creation
  plan = Stripe::Plan.create(
  :name => "location plan for #{name}",
  :id => "location plan for #{name} - #{planid}",
  :interval => "month",
  :interval_count => 1,
  :currency => "eur",
  :amount => price_cents,
)
  end

end
