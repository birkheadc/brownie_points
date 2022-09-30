json.extract! user, :id, :group_id, :user_name, :password, :nickname, :points, :created_at, :updated_at
json.url user_url(user, format: :json)
