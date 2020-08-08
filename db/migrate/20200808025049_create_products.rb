class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.float :quantity
      t.references :type_product, null: false, foreign_key: true
      t.references :presentation_product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
