json.array!(@notes) do |note|
  json.extract! note, :id, :title, :data
  json.url note_url(note, format: :json)
end
