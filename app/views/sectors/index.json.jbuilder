json.array!(@sectors) do |sector|
  json.extract! sector, :id, :short_name, :name, :description
  json.url sector_url(sector, format: :json)
end
