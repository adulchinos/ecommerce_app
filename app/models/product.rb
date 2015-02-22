class Product < ActiveRecord::Base
	belongs_to :vendor
	has_many :product_options
	has_many :orders
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
