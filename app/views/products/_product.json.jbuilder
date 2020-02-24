json.extract! product, :id, :sku, :name, :ean, :proveder, :category, :subcategory, :active, :created_at, :updated_at
json.url product_url(product, format: :json)
