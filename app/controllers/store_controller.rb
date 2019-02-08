class StoreController < ApplicationController
  def index
    @products = Product.order(:title) # The :title orders the products by alphabetical order
  end
end
