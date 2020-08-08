class CreatePresentationProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :presentation_products do |t|
      t.string :name_presentation

      t.timestamps
    end
  end
end
