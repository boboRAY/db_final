class CreateDriverFeedbacks < ActiveRecord::Migration
  def change
    create_table :driver_feedbacks do |t|
      t.text :description
      t.references :driver, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
