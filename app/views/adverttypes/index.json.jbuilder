json.array!(@adverttypes) do |adverttype|
  json.extract! adverttype, :id, :title
  json.url adverttype_url(adverttype, format: :json)
end
