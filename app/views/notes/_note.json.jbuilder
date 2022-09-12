json.extract! note, :id, :user_id, :entity_id, :entity_type, :content, :created_at, :updated_at
json.url note_url(note, format: :json)
