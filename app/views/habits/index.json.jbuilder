json.array!(@habits) do |habit|
  json.extract! habit, :id, :title, :notes, :streak, :difficulty, :tag_ids
  json.url habit_url(habit, format: :json)
end
