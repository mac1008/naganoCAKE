class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :items_id, null: false
      t.integer :unit_purchase_price, null: false
      t.integer :quantity, null: false
      t.integer :production_status, null: false, default: 1
      t.timestamps
    end
  end
end
