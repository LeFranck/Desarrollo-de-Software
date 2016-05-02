json.array!(@projects) do |project|
  json.extract! project, :id, :description, :video_link
  json.url project_url(project, format: :json)
end
