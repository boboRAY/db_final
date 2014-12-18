json.array!(@transportations) do |transportation|
  json.extract! transportation, :id, :name
  json.url transportation_url(transportation, format: :json)
end
