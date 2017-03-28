class Profile < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :products
  has_many :reviews, :as => :reviewable
end
