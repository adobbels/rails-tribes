class Review < ApplicationRecord
  belongs_to :profile
  belongs_to :house
end
