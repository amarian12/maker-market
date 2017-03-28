class Product < ApplicationRecord
  belongs_to :profile
  has_many :reviews, :as => :reviewable
  has_many :rentals

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end

