class ChangeDescriptionToContentInDriverFeedbacks < ActiveRecord::Migration
  def change
    rename_column :driver_feedbacks, :description, :content
  end
end
