class OrdersController < ApplicationController

	def create
		
		@new = Order.create({:quantity => params[:quantity], 
			:user_id => current_user.id, 
			:product_id => params[:product_id], 
			:subtotal => params[:subtotal].to_i * params[:quantity].to_i,
			:tax => params[:tax]})
		
		flash[:success] = "Order successful!"
		redirect_to '/products' 
	end

end
