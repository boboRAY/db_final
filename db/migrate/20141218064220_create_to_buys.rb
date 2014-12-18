class CreateToBuys < ActiveRecord::Migration
  def change
    create_table :to_buys do |t|
      t.references :user, index: true
      t.references :dish, index: true

      t.timestamps
    end
  end
end
