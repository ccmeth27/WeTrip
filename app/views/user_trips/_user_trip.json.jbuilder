json.extract! user_trip, :id, :user_id, :trip_id, :attended, :favorite, :created_at, :updated_at
json.url user_trip_url(user_trip, format: :json)
