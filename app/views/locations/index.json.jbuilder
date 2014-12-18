json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :location_type_id
  json.url location_url(location, format: :json)
end
