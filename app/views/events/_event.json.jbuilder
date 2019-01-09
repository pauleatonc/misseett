json.extract! event, :id, :title, :description, :start, :end, :project_id, :created_at, :updated_at
json.set! :editable, event.editable?
