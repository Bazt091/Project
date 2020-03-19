class Dispatch < ApplicationRecord
    belongs_to :details_dispatch_order, foreign_key: "details_dispatch_orders_id"

    def original_quantity
        details_dispatch_order.product_quantity
    end

    def pending_quantity
        original_quantity - quantity_ok
    end
end
