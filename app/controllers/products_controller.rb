class ProductsController < ApplicationController

	def index 
		@products = Product.all		
		if params[:filter] == "price"
			@products = Product.where("price < ?", 2)
		end	
		if params[:sort] == "lohi"
			@products = Product.order(:price)
		end
		if params[:sort]	== "hilo"
			@products = Product.order(:price => :desc)
		end
		if params[:search] 
			@products = @products.where('title LIKE ?', "%" + params[:search] + "%")
		end
	end

	def new
	end

	def create
		@new = Product.create({:title => params[:title], :image => params[:image], :description => params[:description], 
		:category => params[:category], :price => params[:price]}) 
		flash[:success] = "Product added"
		redirect_to '/products/' + @new.id.to_s
	end

	def show		
		if params[:id] == "random"
		@product = Product.all.sample
		else 
		@product = Product.find(params[:id])
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update({:title => params[:title], :image => params[:image], :description => params[:description], 
		:category => params[:category], :price => params[:price]})

		flash[:success] = "Product updated"
		redirect_to '/products/' + @product.id.to_s
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:success] = "Product removed"
		redirect_to '/products'
	end


end