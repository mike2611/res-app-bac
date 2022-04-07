class RemoveBills < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :bills, :tables
  end
end
