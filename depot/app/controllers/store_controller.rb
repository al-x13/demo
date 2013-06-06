class StoreController < ApplicationController

  def index
    @products = Product.all
    @time = Time.now
    @counter = user_access_counter
    @display_counter = "You accessed this page #{@counter} times" if @counter >= 5
  end

end
