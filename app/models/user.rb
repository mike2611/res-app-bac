class User < ApplicationRecord
  has_many :bills
  has_many :tables
  validates :name, presence: true, length: { minimum: 3, maximum: 10 }
  validates :password, presence: true, length: { minimum: 5}
end
