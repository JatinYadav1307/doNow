json.array!(@dailies) do |daily|
  json.extract! daily, :id, :title, :notes, :difficulty,  :startDate, :streak, :tag_ids, :priority, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :done 
  json.url daily_url(daily, format: :json)
end
