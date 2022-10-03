json.extract! user, :id, :user_name, :password, :nick_name, :points, :partner, :created_at, :updated_at
json.url user_url(user, format: :json)
