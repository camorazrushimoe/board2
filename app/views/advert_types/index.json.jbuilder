json.array!(@advert_types) do |advert_type|
  json.extract! advert_type, :id, :adv_type
  json.url advert_type_url(advert_type, format: :json)
end
