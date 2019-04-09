class StoreController < ApplicationController
  def page_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
  def index
    @products = Product.order(:title) # The :title orders the products by alphabetical order
    @count = page_counter
    @show_message = "You've been on this page #{@count} times" if @count > 5
  end
end
