class OrdersController < ApplicationController

	def update
		order = Order.find_by(user_id => current_user.id, :status => "pending")
		order.update(:status => "purchased")

		flash[:success] = "Purchase complete!"
		redirect_to '/products' 
	end

end
