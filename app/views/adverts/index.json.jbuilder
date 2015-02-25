json.array!(@adverts) do |advert|
  json.extract! advert, :id, :title, :description, :price, :user_id
  json.url advert_url(advert, format: :json)
end
