json.extract! quest, :id, :name, :description, :price, :user_id, :created_at, :updated_at
json.url quest_url(quest, format: :json)
