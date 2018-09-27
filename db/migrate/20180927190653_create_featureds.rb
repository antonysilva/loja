class CreateFeatureds < ActiveRecord::Migration[5.2]
  def change
    create_table :featureds do |t|
      t.references :product, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
