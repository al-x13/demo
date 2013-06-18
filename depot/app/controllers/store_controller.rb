class StoreController < ApplicationController

  def index
    @products = Product.order(:title)
    @cart = current_cart
    @time = Time.now
    @counter = user_access_counter
    @display_counter = "You accessed this page #{@counter} times" if @counter
  end

end
