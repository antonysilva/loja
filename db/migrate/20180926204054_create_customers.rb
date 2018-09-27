class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.date :birthday
      t.string :gener

      t.timestamps
    end
  end
end