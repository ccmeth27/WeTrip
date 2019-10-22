json.extract! trip, :id, :title, :lodging, :meals, :transportation, :cost, :start_date, :end_date, :created_at, :updated_at
json.url trip_url(trip, format: :json)
