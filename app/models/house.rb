class House < ApplicationRecord
  has_many :bookings
  has_many :house_options
end
