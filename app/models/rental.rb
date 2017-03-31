class Rental < ApplicationRecord
  belongs_to :profile
  belongs_to :product
  has_many :reviews

  scope :pending_or_confirmed, -> { where(confirmed: [true, nil]) }
  scope :rejected, -> { where(confirmed: false) }
end
