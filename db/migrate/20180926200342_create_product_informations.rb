class CreateProductInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :product_informations do |t|
      t.references :product_information_item, foreign_key: true
      t.string :description
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
