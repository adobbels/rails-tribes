class House < ApplicationRecord
  has_many :booking
  has_many :house_options
end
