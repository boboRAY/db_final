class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone
      t.string :working_time
      t.references :transportation, index: true

      t.timestamps
    end
  end
end
