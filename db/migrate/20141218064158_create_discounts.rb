class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.text :description
      t.string :title
      t.references :restaurant, index: true
      t.float :percentage

      t.timestamps
    end
  end
end
