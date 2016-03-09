class RemoveUpdatedAtFromProductOptions < ActiveRecord::Migration
  def change
  	remove_column :product_options, :updated_at
  end
end
