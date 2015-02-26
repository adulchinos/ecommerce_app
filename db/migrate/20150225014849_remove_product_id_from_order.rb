class RemoveProductIdFromOrder < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.remove :product_id
  	end
  end
end
