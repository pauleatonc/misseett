json.extract! project, :id, :user_id, :name, :description, :office, :project_type_id, :project_traffic_id, :city_id, :created_at, :updated_at
json.url project_url(project, format: :json)
