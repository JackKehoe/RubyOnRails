json.extract! playlist, :id, :user_id, :song_id, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)