json.extract! restaurant, :id, :dish_id, :address, :neighborhood_id,
              :google_maps_url, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
