class CreateJoinTableProductStockByLocation < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :stock_by_locations do |t|
      # t.index [:product_id, :stock_by_location_id]
      # t.index [:stock_by_location_id, :product_id]
    end
  end
end
