class Jewelry < ApplicationRecord
  # associtations
  belongs_to :user
  has_many :rentals
  # validations
  validates :name, presence: true
  validates :price, presence: true
end
