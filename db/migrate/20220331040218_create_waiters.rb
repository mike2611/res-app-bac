class CreateWaiters < ActiveRecord::Migration[7.0]
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
