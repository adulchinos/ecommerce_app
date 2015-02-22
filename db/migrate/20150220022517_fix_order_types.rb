class FixOrderTypes < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
	  t.remove :product_id
      t.remove :user_id
      t.remove :quantity
      t.remove :product_option_id
      t.remove :subtotal
      t.remove :tax

  	  t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.integer :product_option_id
      t.decimal :subtotal, precision: 7, scale: 2
      t.decimal :tax, precision: 7, scale: 2
  	end

  end
end
