json.extract! post, :id, :Title, :Content, :Image, :created_at, :updated_at
json.url post_url(post, format: :json)
