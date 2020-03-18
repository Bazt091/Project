class RemoveClientNameFromInfoDispatchOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :info_dispatch_orders, :client_name, :string
    remove_column :info_dispatch_orders, :user_name, :string
  end
end
