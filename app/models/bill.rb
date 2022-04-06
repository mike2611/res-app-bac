class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :table
  validates :total, presence: true
end
