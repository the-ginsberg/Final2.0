json.array!(@newsfeeds) do |newsfeed|
  json.extract! newsfeed, :id, :title, :body, :dashboard_id
  json.url newsfeed_url(newsfeed, format: :json)
end
