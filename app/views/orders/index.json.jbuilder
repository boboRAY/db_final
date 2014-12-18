json.array!(@orders) do |order|
  json.extract! order, :id, :total_price, :driver_id, :user_id, :location_id, :restaurant_id
  json.url order_url(order, format: :json)
end
