class RemakeProductOptions < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.remove :one
      	t.remove :three
      	t.remove :five
      	t.remove :ten
      	t.remove :twenty_five
      	t.remove :fifty
      	t.remove :one_hundred

      	t.integer :number_of_bulbs
      	t.decimal :price
      	t.integer :product_id

  	end
  end
end
