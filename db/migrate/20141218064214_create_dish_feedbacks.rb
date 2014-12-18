class CreateDishFeedbacks < ActiveRecord::Migration
  def change
    create_table :dish_feedbacks do |t|
      t.text :content
      t.references :dish, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
