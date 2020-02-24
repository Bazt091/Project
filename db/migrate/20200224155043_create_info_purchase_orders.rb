class CreateInfoPurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :info_purchase_orders do |t|
      t.references :provider, foreign_key: true
      t.string :provider_name
      t.references :user, foreign_key: true
      t.string :user_name

      t.timestamps
    end
  end
end
