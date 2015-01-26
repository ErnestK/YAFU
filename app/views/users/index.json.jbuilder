json.array!(@users) do |user|
  json.extract! user, :id, :login, :email, :name, :lastname, :d_birth
  json.url user_url(user, format: :json)
end
