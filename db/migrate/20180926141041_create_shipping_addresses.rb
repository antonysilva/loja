class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string :name
      t.string :street
      t.integer :number
      t.string :neghborhood
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
