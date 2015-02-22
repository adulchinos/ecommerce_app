class FixDecimalInProductOptions < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.change :price, :decimal, precision: 7, scale: 2
  	end
  end
end
