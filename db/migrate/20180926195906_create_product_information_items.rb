class CreateProductInformationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :product_information_items do |t|
      t.string :item

      t.timestamps
    end
  end
end
