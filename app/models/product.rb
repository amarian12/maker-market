class Product < ApplicationRecord
  belongs_to :profile
  has_many :reviews, :as => :reviewable
  has_many :rentals
end
