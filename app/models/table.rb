class Table < ApplicationRecord
  belongs_to :user
  has_one :bill
  validates :number, presence: true
  validates :people, presence: true, length: { minimum: 1 }
end
