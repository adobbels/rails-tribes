class Booking < ApplicationRecord
  belongs_to :profile
  belongs_to :house
  validates :start_date, presence: true
end
