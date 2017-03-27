class Rental < ApplicationRecord
  belongs_to :user, :product
  has_many :reviews
end
