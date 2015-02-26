class Product < ActiveRecord::Base
	belongs_to :vendor
	has_many :product_options
	has_many :categorized_products
	has_many :categories, :through => :categorized_products
	has_many :carted_products
	has_many :orders, :through => :carted_products
			def message
				if price < 2
						 return "Discount Item!"
					else
						return "On Sale!"
					end
			end

			def tax
				return price * 0.09
			end

			def total
				return price + tax
			end

end
