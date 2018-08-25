json.extract! feed, :id, :name, :description, :url, :created_at, :updated_at
json.url feed_url(feed, format: :json)
