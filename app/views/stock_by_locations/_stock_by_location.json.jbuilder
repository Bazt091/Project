json.extract! stock_by_location, :id, :location_id, :product_id, :product_quantity, :created_at, :updated_at
json.url stock_by_location_url(stock_by_location, format: :json)
