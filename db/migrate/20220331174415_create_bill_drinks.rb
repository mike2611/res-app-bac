class CreateBillDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :bill_drinks do |t|
      t.integer :quantity
      t.belongs_to :drink, null: false, foreign_key: true
      t.belongs_to :bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
