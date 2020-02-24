class CreateInfoDispatchOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :info_dispatch_orders do |t|
      t.references :client, foreign_key: true
      t.string :client_name
      t.string :client_order_purchase
      t.references :user, foreign_key: true
      t.string :user_name

      t.timestamps
    end
  end
end
