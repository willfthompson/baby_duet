class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products_size = ProductsSize.where(:product_id => params[:id])
  end

  def add_to_basket
    productid = ProductsSize.find(params[:product]["products_size_ids"].to_i).id.to_s
    @basket = session[:basket]
    @basket.keys.include?(productid) ? @basket[productid] += 1 : @basket[productid] = 1
    redirect_to "/basket"
    # UPDATE LATER
    flash[:notice] = "#{@basket}"
  end
end
