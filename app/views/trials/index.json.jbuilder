json.array!(@trials) do |trial|
  json.extract! trial, :id, :title, :notes, :diff, :tag_ids, :streak, :date
  json.url trial_url(trial, format: :json)
end
