json.extract! details_purchase_order, :id, :info_purchase_order_id, :product_id, :product_quantity, :comment, :created_at, :updated_at
json.url details_purchase_order_url(details_purchase_order, format: :json)
