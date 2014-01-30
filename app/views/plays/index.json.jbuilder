json.array!(@plays) do |play|
  json.extract! play, :id, :references, :references
  json.url play_url(play, format: :json)
end
