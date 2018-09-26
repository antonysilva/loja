class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :unit_price
      t.integer :evaluation

      t.timestamps
    end
  end
end
