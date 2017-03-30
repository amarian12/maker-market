class Profile < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :products, dependent: :destroy
  has_many :reviews, :as => :reviewable

  validates_presence_of :name, :description, on: :update

  mount_uploader :photo, PhotoUploader

end
