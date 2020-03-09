class CreateJoinTableProductClient < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :clients do |t|
      # t.index [:product_id, :client_id]
      # t.index [:client_id, :product_id]
    end
  end
end
