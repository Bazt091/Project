class RemoveProviderNameFromInfoPurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :info_purchase_orders, :provider_name, :string
    remove_column :info_purchase_orders, :user_name, :string
  end
end
