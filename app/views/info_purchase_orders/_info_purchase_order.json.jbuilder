json.extract! info_purchase_order, :id, :provider_id, :provider_name, :user_id, :user_name, :created_at, :updated_at
json.url info_purchase_order_url(info_purchase_order, format: :json)
