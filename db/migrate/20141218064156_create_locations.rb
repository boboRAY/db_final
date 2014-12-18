class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.references :location_type, index: true

      t.timestamps
    end
  end
end
