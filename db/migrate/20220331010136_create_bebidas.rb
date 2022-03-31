class CreateBebidas < ActiveRecord::Migration[7.0]
  def change
    create_table :bebidas do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
