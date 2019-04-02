class StoreController < ApplicationController
  def index
    @products = Product.order(:title) # The :title orders the products by alphabetical order
    if session[:counter].nil?
      session[:counter] = 0
    end
  end
end
