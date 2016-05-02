json.array!(@users) do |user|
  json.extract! user, :id, :username, :type, :email, :firstname, :lastname, :birthdate
  json.url user_url(user, format: :json)
end
