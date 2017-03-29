class Product < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :category
=======
  belongs_to :profile
>>>>>>> 3537d16db380e0cc56412342830c44621259964c
  has_many :reviews, :as => :reviewable
  has_many :rentals

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end

