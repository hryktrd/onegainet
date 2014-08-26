json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :free_date, :helper_id
  json.url schedule_url(schedule, format: :json)
end
