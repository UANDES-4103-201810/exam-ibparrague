json.extract! order, :id, :payment_method, :created_at, :updated_at
json.url order_url(order, format: :json)
