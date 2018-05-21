json.extract! meetup, :id, :name, :start, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
