json.array!(@trials) do |trial|
  json.extract! trial, :id, :title, :notes, :diff
  json.url trial_url(trial, format: :json)
end
