class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true
      t.references :dish, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
