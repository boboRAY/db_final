json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :phone, :working_time, :transportation_id
  json.url driver_url(driver, format: :json)
end
