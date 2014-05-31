json.array!(@who_is) do |who_i|
  json.extract! who_i, :username, :password
  json.url who_i_url(who_i, format: :json)
end