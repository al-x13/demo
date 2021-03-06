class ApplicationController < ActionController::Base
  protect_from_forgery

  private

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

    def user_access_counter
      session[:counter] ||= 0
      session[:counter] += 1

      if session[:counter] >= 5
        session[:counter]
      end

    end

end
