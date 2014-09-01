json.array!(@animes) do |anime|
  json.extract! anime, :id, :name, :picture, :synopsis
  json.url anime_url(anime, format: :json)
end
