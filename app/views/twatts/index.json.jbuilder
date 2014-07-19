json.array!(@twatts) do |twatt|
  json.extract! twatt, :id, :name, :content
  json.url twatt_url(twatt, format: :json)
end
