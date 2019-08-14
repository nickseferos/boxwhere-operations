json.extract! vessel, :id, :steamship_line_id, :name, :length_overall, :created_at, :updated_at
json.url vessel_url(vessel, format: :json)
