class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.references :driver, index: true
      t.references :user, index: true
      t.references :location, index: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
