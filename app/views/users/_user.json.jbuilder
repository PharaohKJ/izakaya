json.extract! user, :id, :provider, :uid, :nickname, :image_url, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
