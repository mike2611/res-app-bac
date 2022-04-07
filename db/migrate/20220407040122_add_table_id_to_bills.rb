class AddTableIdToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :table_id, :integer
    add_foreign_key :bills, :tables, column: :table_id, :unique => true
    add_index :bills, :table_id, unique: true
  end
end
