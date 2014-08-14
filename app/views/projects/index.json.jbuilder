json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start, :end
  json.url project_url(project, format: :json)
end
