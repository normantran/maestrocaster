json.array!(@improvisers) do |improviser|
  json.extract! improviser, :id, :name
  json.url improviser_url(improviser, format: :json)
end
