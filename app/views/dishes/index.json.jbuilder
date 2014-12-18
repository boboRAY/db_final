json.array!(@dishes) do |dish|
  json.extract! dish, :id, :restaurant_id, :name, :description, :price, :dish_type_id
  json.url dish_url(dish, format: :json)
end
