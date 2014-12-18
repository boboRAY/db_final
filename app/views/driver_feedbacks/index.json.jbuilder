json.array!(@driver_feedbacks) do |driver_feedback|
  json.extract! driver_feedback, :id, :description, :driver_id, :user_id
  json.url driver_feedback_url(driver_feedback, format: :json)
end
