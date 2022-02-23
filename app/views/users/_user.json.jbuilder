json.extract! user, :id, :user, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
