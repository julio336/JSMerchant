class OrderItem < ActiveRecord::Base
  attr_accessible :product_id, :order_id, :quantity, :price
  belongs_to :order
  belongs_to :product
  validates_presence_of :order_id, :product_id
  
  def subtotal
    product.price
  end
end
