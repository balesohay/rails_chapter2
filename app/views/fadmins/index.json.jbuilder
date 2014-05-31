json.array!(@fadmins) do |fadmin|
  json.extract! fadmin, :username, :password
  json.url fadmin_url(fadmin, format: :json)
end