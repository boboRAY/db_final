class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :restaurant, index: true
      t.string :name
      t.text :description
      t.integer :price
      t.references :dish_type, index: true

      t.timestamps
    end
  end
end
