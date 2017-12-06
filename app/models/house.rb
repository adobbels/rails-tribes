class House < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?
  mount_uploader :photos, PhotoUploader

  has_many :bookings
  has_many :house_options
  has_many :reviews
  has_many :features, through: :house_options

  def full_address
    "#{address} #{post_code} #{city} #{country}"
  end
end
