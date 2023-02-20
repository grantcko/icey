class User < ApplicationRecord
  has_many :rentals # rentals as a client
  has_many :jewelries
  has_many :rentals_as_owner, through: :jewelries, source: :rentals

  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
