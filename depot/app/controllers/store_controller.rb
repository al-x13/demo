class StoreController < ApplicationController

  def index

    @products = Product.all
    @time = Time.now
    @counter = user_access_counter

  end

end
