json.array!(@improvisers) do |improviser|
  json.extract! improviser, :id, :string
  json.url improviser_url(improviser, format: :json)
end
