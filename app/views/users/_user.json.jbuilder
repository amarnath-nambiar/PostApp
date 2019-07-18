json.extract! user, :id, :first_name, :last_name, :bio, :user_name, :position, :organization, :deleted_at, :created_at, :updated_at
json.url user_url(user, format: :json)
