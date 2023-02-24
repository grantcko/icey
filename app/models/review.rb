class Review < ApplicationRecord
  NUMBER = [0, 1, 2, 3, 4, 5]
  belongs_to :jewelry
  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, inclusion: { in: NUMBER }
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true
end
