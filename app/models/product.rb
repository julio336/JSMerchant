class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :img_url, :stock
  validates_numericality_of :price
  validates_numericality_of :stock, greater_than_or_equal_to: 0, :with=>/\A[+\-]?\d+\Z/
end
