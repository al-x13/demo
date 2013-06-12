class LineItem < ActiveRecord::Base

  attr_accessible :quantity, :cart_id, :product_id, :price
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

end
