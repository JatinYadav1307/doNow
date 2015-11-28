json.array!(@rewards) do |reward|
  json.extract! reward, :id, :title, :notes, :price
  json.url reward_url(reward, format: :json)
end
