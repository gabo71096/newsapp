json.extract! noticium, :id, :title, :lower, :author, :body, :image, :created_at, :updated_at
json.url noticium_url(noticium, format: :json)
