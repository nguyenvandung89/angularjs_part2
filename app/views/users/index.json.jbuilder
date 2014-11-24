json.array!(@users) do |user|
  json.extract! user, :id, :name, :address, :join_date, :email
  json.url user_url(user, format: :json)
end
