class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.string :one
      t.string :three
      t.string :five
      t.string :ten
      t.string :twenty_five
      t.string :fifty
      t.string :one_hundred

      t.timestamps null: false
    end
  end
end
