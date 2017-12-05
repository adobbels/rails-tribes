class House < ApplicationRecord
  has_many :bookings
  has_many :house_options
  has_many :reviews
  has_many :features, through: :house_options
end
