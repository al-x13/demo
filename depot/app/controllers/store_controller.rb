class StoreController < ApplicationController

  def index
    @products = Product.all
    @cart = current_cart
    @time = Time.now
    @counter = user_access_counter
    @display_counter = "You accessed this page #{@counter} times" if @counter
  end

end
