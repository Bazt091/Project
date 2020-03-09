class CreateStockByLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_by_locations do |t|
      t.references :location, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :product_quantity

      t.timestamps
    end
  end
end
