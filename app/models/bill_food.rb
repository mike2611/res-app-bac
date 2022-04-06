class BillFood < ApplicationRecord
  belongs_to :food
  belongs_to :bill
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
