json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :user_id, :description
  json.url beer_url(beer, format: :json)
end
