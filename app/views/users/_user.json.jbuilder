json.extract! user, :id, :name, :username, :dob, :profile_img, :created_at, :updated_at
json.url user_url(user, format: :json)
