class Property < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :location, uniqueness: true
  validates :price, presence: true
end
