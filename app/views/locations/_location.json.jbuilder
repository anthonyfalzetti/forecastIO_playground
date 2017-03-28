json.extract! location, :id, :zip, :lat, :long, :tempature, :created_at, :updated_at
json.url location_url(location, format: :json)
