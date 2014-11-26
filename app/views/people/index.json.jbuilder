json.array!(@people) do |person|
  json.extract! person, :id, :name, :present_ideas
  json.url person_url(person, format: :json)
end
