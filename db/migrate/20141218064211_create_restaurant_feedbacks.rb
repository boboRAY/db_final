class CreateRestaurantFeedbacks < ActiveRecord::Migration
  def change
    create_table :restaurant_feedbacks do |t|
      t.text :content
      t.references :restaurant, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
