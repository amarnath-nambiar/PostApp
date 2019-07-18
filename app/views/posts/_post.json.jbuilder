json.extract! post, :id, :title, :content, :user_id, :deleted_at, :is_public, :archive, :created_at, :updated_at
json.url post_url(post, format: :json)
