class Profile < ApplicationRecord
  has_attachment :photo

  belongs_to :user
  has_many :reviews
  has_many :bookings

end
