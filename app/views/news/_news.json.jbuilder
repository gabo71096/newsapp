json.extract! news, :id, :new_id, :title, :lower, :author, :text, :image, :created_at, :updated_at
json.url news_url(news, format: :json)
