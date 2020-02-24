class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.bigint :ean
      t.string :proveder
      t.string :category
      t.string :subcategory
      t.boolean :active

      t.timestamps
    end
  end
end
