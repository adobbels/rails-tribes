class Profile < ApplicationRecord
  has_attachment :photo

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

end
