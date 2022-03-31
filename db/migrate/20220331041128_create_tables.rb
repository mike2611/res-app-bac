class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.string :number
      t.integer :people

      t.timestamps
    end
  end
end
