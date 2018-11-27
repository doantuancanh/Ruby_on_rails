json.extract! story, :id, :name, :description, :author, :created_at, :updated_at
json.url story_url(story, format: :json)
