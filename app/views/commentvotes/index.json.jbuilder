json.array!(@commentvotes) do |commentvote|
  json.extract! commentvote, :id, :type, :user_id, :comment_id
  json.url commentvote_url(commentvote, format: :json)
end
