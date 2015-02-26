class AddStatusToOrder < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.string :status 
  	end
  end
end
