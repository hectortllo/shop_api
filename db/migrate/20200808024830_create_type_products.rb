class CreateTypeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :type_products do |t|
      t.string :name_type_product

      t.timestamps
    end
  end
end
