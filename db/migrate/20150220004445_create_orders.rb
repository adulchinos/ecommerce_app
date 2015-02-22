class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product_id
      t.string :user_id
      t.string :quantity
      t.string :product_option_id
      t.string :subtotal
      t.string :tax

      t.timestamps null: false
    end
  end
end
