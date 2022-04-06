class BillDrink < ApplicationRecord
  belongs_to :drink
  belongs_to :bill
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
