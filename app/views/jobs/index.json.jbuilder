json.array!(@jobs) do |job|
  json.extract! job, :id, :job_name
  json.url job_url(job, format: :json)
end
