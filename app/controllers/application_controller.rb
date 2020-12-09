class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: :admin
  before_action :create_basket


  def create_basket
    if !session[:basket]
      session[:basket] = []
    end
  end
end
