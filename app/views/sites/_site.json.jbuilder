json.extract! site, :id, :name, :description, :user_id, :team_id, :created_at, :updated_at
json.url site_url(site, format: :json)
