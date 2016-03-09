class RemoveCreatedAtFromProductOptions < ActiveRecord::Migration
  def change
  	remove_column :product_options, :created_at
  end
end
