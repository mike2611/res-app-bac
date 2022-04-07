class Setnotnull < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:bills, :table_id, false)
  end
end
