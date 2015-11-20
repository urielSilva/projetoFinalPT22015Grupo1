json.array!(@project_status) do |project_status|
  json.extract! project_status, :id, :project_status_name
  json.url project_status_url(project_status, format: :json)
end
