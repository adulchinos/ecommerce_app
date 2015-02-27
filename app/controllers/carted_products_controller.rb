class CartedProductsController < ApplicationController
before_action :authenticate_user!
	def create
		@order = Order.find_by(:status => "pending", :user_id => current_user.id)
		if @order 
				CartedProduct.create({ 
				:product_id => params[:product_id],
				:quantity => params[:quantity],
				:order_id => @order.id})
		else
				Order.create({ 
				:user_id => current_user.id, 
				:status => "pending",
				:subtotal => params[:subtotal].to_i * params[:quantity].to_i,
				:tax => params[:tax]})

				CartedProduct.create({ 
				:product_id => params[:product_id],
				:quantity => params[:quantity],
				:order_id => @order.id})
		end
			flash[:success] = "Product added to cart!"
			redirect_to '/products' 
	end

	def index
		# if user_signed_in?
			@order = Order.find_by(:user_id =>current_user.id, :status => "pending")
			if @order
			@carted_products = @order.carted_products
		else
			flash[:warning] = "there is nothing in your shopping cart"
			redirect_to "/"
		end
	# else
	# 	flash[:warning] = "please sign in"
	# 	redirect_to "/"
	# end
	end
end
