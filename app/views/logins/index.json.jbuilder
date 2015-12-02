json.array!(@logins) do |login|
  json.extract! login, :id, :email, :token
  json.url login_url(login, format: :json)
end
