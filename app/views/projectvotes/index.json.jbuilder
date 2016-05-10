json.array!(@projectvotes) do |projectvote|
  json.extract! projectvote, :id, :rating, :user_id, :project_id
  json.url projectvote_url(projectvote, format: :json)
end
