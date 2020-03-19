class Reception < ApplicationRecord
    belongs_to :details_purchase_order, foreign_key: "details_purchase_orders_id"

    def self.search(search)
        if search
          where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end

    def original_quantity
        details_purchase_order.product_quantity
    end

    def pending_quantity
        original_quantity - quantity_ok
    end
end
