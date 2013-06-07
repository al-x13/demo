class LineItem < ActiveRecord::Base
  attr_accessible :quantity, :cart_id, :product_id, :product
  belongs_to :product
  belongs_to :cart
end
