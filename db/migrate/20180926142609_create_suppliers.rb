class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :cnpj
      t.string :site

      t.timestamps
    end
  end
end
