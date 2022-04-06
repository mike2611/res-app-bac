class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.float :total
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
