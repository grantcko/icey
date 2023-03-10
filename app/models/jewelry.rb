class Jewelry < ApplicationRecord
  # associtations
  belongs_to :user
  has_many :rentals
  has_many :reviews, dependent: :destroy
  has_many_attached :photos
  
  # validations
  validates :name, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_detail,
    against: [ :name, :detail ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
