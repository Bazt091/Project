class RemoveCommentFromDetailsDispatchOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :details_dispatch_orders, :comment, :text
    remove_column :details_purchase_orders, :comment, :text
  end
end
