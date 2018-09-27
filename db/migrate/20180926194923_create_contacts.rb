class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :mobile
      t.string :email
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
