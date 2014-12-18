json.array!(@discounts) do |discount|
  json.extract! discount, :id, :description, :title, :restaurant_id, :percentage
  json.url discount_url(discount, format: :json)
end
