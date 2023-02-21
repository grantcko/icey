class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :jewelry

  enum status: [ :pending, :accepted, :rejected ]

  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
