json.extract! report, :id, :crime, :crime_description, :crime_scene, :crime_suspects, :victim, :created_at, :updated_at
json.url report_url(report, format: :json)
