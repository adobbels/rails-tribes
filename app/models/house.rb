class House < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?
  has_attachments :photos, maximum: 15

  has_many :bookings
  has_many :house_options
  has_many :reviews
  has_many :features, through: :house_options

  def full_address
    "#{address} #{post_code} #{city} #{country}"
  end


end
