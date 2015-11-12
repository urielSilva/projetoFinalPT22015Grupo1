json.array!(@knowledge) do |knowledge|
	json.extract! knowledge, :id,
	:description, :knowledge_level_id
	json.url knowledge_url(knowledge, format: :json)
end