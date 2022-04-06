class AddUserToTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :tables, :user, null: false, foreign_key: true
  end
end
