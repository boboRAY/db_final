json.array!(@dish_feedbacks) do |dish_feedback|
  json.extract! dish_feedback, :id, :content, :dish_id, :user_id
  json.url dish_feedback_url(dish_feedback, format: :json)
end
