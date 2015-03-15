json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :body
  json.url room_url(room, format: :json)
end
