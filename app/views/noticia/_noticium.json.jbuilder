json.extract! noticium, :id, :new_id, :title, :lower, :author, :text, :image, :created_at, :updated_at
json.url noticium_url(noticium, format: :json)
