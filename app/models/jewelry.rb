class Jewelry < ApplicationRecord
  # associtations
  belongs_to :user
  has_many :rentals
  has_one_attached :photo
  # validations
  validates :name, presence: true
  validates :price, presence: true
end
