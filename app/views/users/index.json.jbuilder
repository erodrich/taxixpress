json.array!(@users) do |user|
  json.extract! user, :id, :no_user, :no_correo, :password_digest
  json.url user_url(user, format: :json)
end
