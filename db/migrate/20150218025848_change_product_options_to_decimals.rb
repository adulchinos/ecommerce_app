class ChangeProductOptionsToDecimals < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
      	t.remove :one
      	t.remove :three
      	t.remove :five
      	t.remove :ten
      	t.remove :twenty_five
      	t.remove :fifty
      	t.remove :one_hundred

      	t.decimal :one
      	t.decimal :three
      	t.decimal :five
      	t.decimal :ten
      	t.decimal :twenty_five
      	t.decimal :fifty
      	t.decimal :one_hundred
  	end
  end
end
