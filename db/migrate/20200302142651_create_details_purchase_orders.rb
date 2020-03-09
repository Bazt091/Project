class CreateDetailsPurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :details_purchase_orders do |t|
      t.references :info_purchase_order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :product_quantity
      t.text :comment

      t.timestamps
    end
  end
end
