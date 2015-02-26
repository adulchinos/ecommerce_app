class MakeCartedProductDataIntegers < ActiveRecord::Migration
  def change
  	change_table :carted_products do |t|
  	  t.remove :product_id
      t.remove :order_id
      t.remove :quantity

      t.integer :product_id
      t.integer :order_id
      t.integer :quantity
  	end
  end
end
