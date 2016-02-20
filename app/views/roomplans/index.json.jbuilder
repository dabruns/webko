json.array!(@roomplans) do |roomplan|
  json.extract! roomplan, :id, :room_id, :usage, :start_time, :end_time
  json.url roomplan_url(roomplan, format: :json)
end
