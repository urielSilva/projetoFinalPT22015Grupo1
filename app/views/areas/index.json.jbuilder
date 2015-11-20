json.array!(@areas) do |area|
  json.extract! area, :name, :sector
  json.url area_url(area, format: :json)
end