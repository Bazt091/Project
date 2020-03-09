class CreateJoinTableLocationStockByLocation < ActiveRecord::Migration[5.2]
  def change
    create_join_table :locations, :stock_by_locations do |t|
      # t.index [:location_id, :stock_by_location_id]
      # t.index [:stock_by_location_id, :location_id]
    end
  end
end
