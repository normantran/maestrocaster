json.array!(@plays) do |play|
  json.extract! play, :id, :improviser, :show
  json.url play_url(play, format: :json)
end
