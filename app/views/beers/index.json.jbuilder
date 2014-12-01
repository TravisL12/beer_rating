json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :purchased_by
  json.url beer_url(beer, format: :json)
end
