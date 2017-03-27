class User < ApplicationRecord
  has_many :rentals
  has_many :products
  has_many :reviews, :as => :reviewable
end
