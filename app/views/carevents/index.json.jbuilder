json.array!(@carevents) do |carevent|
  json.extract! carevent, :id, :title, :description, :start_time, :end_time, :car_id
  json.url carevent_url(carevent, format: :json)
end
