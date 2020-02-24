json.extract! client, :id, :name, :direction, :payment_condition, :phone, :email, :contact, :created_at, :updated_at
json.url client_url(client, format: :json)
