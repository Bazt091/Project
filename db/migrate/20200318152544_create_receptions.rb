class CreateReceptions < ActiveRecord::Migration[5.2]
  def change
    create_table :receptions do |t|
      t.references :details_purchase_orders, foreign_key: true
      t.integer :quantity_ok

      t.timestamps
    end
  end
end
