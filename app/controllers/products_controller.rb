class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products_size = ProductsSize.where(:product_id => params[:id])
  end

  def add_to_basket
    session[:basket] << ProductsSize.where(:product_id => params[:id], :size_id => params[:product]["size_ids"])
    redirect_to "#"
    flash[:notice] = "Product added to basket!"
  end
end
