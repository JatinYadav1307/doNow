json.array!(@dailies) do |daily|
  json.extract! daily, :id, :title, :notes, :difficulty, :startDate, :streak, :tag_ids, :priority
  json.url daily_url(daily, format: :json)
end
