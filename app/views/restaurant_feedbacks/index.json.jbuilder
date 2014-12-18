json.array!(@restaurant_feedbacks) do |restaurant_feedback|
  json.extract! restaurant_feedback, :id, :content, :restaurant_id, :user_id
  json.url restaurant_feedback_url(restaurant_feedback, format: :json)
end
