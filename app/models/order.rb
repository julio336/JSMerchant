class Order < ActiveRecord::Base
  attr_accessible :customer_id, :status
  has_many :order_items, :dependent => :destroy
  has_many :products
  
  def total
    order_items.collect(&:subtotal).sum
  end
  
end
