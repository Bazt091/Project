class CreateDetailsDispatchOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :details_dispatch_orders do |t|
      t.references :info_dispatch_order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :product_quantity
      t.text :comment

      t.timestamps
    end
  end
end
