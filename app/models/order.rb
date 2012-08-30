class Order < ActiveRecord::Base
  attr_accessible :customer_id, :status, :adress_id
  attr_accessible :user, :status
  belongs_to :adress
  has_many :order_items, :dependent => :destroy
  has_many :products
  belongs_to :user, :foreign_key => :customer_id
  def total
    order_items.collect(&:subtotal).sum
  end
  
end
