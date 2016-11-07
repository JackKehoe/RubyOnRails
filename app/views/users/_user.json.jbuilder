json.extract! user, :id, :username, :dob, :gender, :account, :password, :created_at, :updated_at
json.url user_url(user, format: :json)