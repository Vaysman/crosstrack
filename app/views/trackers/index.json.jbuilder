json.array!(@trackers) do |tracker|
  json.extract! tracker, :id, :name, :producer, :uid, :user_id
  json.url tracker_url(tracker, format: :json)
end
