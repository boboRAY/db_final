json.array!(@to_buys) do |to_buy|
  json.extract! to_buy, :id, :user_id, :dish_id
  json.url to_buy_url(to_buy, format: :json)
end
