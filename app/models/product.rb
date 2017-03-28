class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, :as => :reviewable
  has_many :rentals
end
