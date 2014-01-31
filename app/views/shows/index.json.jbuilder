json.array!(@shows) do |show|
  json.extract! show, :id, :show_date
  json.url show_url(show, format: :json)
end
