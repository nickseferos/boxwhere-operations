json.extract! voyage, :id, :numberin, :numberout, :eta, :etd, :ata, :atd, :terminal_id, :vessel_id, :created_at, :updated_at
json.url voyage_url(voyage, format: :json)
