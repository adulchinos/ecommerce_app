class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :product_option
			

end
