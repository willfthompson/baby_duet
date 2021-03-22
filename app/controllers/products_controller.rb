class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products_size = ProductsSize.where(:product_id => params[:id])
  end

  def add_to_basket
    # productid = ProductsSize.find(params[:product]["products_size_ids"].to_i).id.to_s
    productid = ProductsSize.where(:size_id => params[:product]["products_size_ids"], :product_id => params[:id]).ids.first
    @basket = session[:basket]
    @basket.keys.include?(productid) ? @basket[productid] += 1 : @basket[productid] = 1
    redirect_to "/basket"
    # UPDATE LATER
        flash[:notice] = "Added to basket"
  end
end
