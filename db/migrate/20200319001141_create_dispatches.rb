class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.references :details_dispatch_orders, foreign_key: true
      t.integer :quantity_ok

      t.timestamps
    end
  end
end
