json.extract! song, :id, :title, :artist, :album, :genre_id, :date_released, :created_at, :updated_at
json.url song_url(song, format: :json)