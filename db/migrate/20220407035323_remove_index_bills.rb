class RemoveIndexBills < ActiveRecord::Migration[7.0]
  def change
    remove_column :bills, :table_id, :bigint
  end
end
