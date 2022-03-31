class BillDrink < ApplicationRecord
  belongs_to :drink
  belongs_to :bill
end
