class House < ApplicationRecord
  has_many :bookings
  has_many :house_options
  has_many :reviews
  has_many :features, through: :house_options

  mount_uploader :photos, PhotoUploader

  geocoded_by :full_adress
  after_validation :geocode, if: :address_changed?


  def full_adress
    "#{address} #{post_code} #{city} #{country}"
  end
end
