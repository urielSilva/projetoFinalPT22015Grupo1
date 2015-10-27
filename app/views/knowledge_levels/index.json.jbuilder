json.array!(@knowledge_levels) do |knowledge_level|
  json.extract! knowledge_level, :id, :description, :level
  json.url knowledge_level_url(knowledge_level, format: :json)
end
