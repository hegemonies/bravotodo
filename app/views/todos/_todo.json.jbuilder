json.extract! todo, :id, :done, :description, :date, :created_at, :updated_at
json.url todo_url(todo, format: :json)
