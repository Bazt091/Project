class JoinTableProductProvider < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :providers do |t|
      # t.index [:product_id, :provider_id]
      # t.index [:provider_id, :product_id]
    end
  end
end
