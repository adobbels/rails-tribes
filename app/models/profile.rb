class Profile < ApplicationRecord
  belongs_to :user
  has_many :review
  has_many :booking
end
