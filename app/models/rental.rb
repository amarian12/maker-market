class Rental < ApplicationRecord
  belongs_to :profile, :product
  has_many :reviews
end
