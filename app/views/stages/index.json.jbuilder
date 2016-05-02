json.array!(@stages) do |stage|
  json.extract! stage, :id, :description, :video_link, :completed
  json.url stage_url(stage, format: :json)
end
