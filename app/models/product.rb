class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews, :as => :reviewable
  has_many :rentals
end
