json.array!(@notes) do |note|
  json.extract! note, :id, :id, :title, :raw_body, :body
  json.url note_url(note, format: :json)
end
