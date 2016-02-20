json.array!(@vacationplans) do |vacationplan|
  json.extract! vacationplan, :id, :user_id, :start_time, :end_time
  json.url vacationplan_url(vacationplan, format: :json)
end
