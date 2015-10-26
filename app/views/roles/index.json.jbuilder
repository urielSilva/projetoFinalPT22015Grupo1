json.array!(@roles) do |role|
  json.extract! role, :id, :Nome
  json.url role_url(role, format: :json)
end
