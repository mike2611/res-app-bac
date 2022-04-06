class Food < ApplicationRecord
  has_many :bill_foods
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
