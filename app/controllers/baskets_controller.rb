class BasketsController < ApplicationController
  def show_basket
    @basket_items = []
    session[:basket].each do |item|
      basket_item = {}
      basket_item[:quantity] = item[1]
      basket_item[:products_size] = ProductsSize.find(item[0].to_i)

      item = ProductsSize.find(item[0].to_i)

      basket_item[:product] = Product.find(item.product_id)
      basket_item[:size] = Size.find(item.size_id)

      @basket_items << basket_item
    end
  end

  def decrement_basket
    if session[:basket][params[:id]] <= 1
      session[:basket].delete(params[:id])
    else
      session[:basket][params[:id]] -= 1
    end
    redirect_to "/basket"
    # UPDATE LATER
    flash[:notice] = "#{session[:basket]}"
  end

  def increment_basket
    session[:basket][params[:id]] += 1
    redirect_to "/basket"
    # UPDATE LATER
    flash[:notice] = "#{session[:basket]}"
  end
end
