json.array!(@project_phases) do |project_phase|
  json.extract! project_phase, :id, :project_id, :name, :start, :end
  json.url project_phase_url(project_phase, format: :json)
end
