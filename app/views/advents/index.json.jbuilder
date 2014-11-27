json.array!(@advents) do |advent|
  json.extract! advent, :id, :date, :title, :description, :picture
  json.url advent_url(advent, format: :json)
end
