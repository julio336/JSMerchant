module ProductsHelper
  def print_price(price)
     number_to_currency price
   end
   def price=(input)
       input.delete!("$")
       super
   end
   def print_stock(stock, requested = 1)
       if stock >= requested
         content_tag :span, "In Stock", :class => "in_stock"
       elsif stock > 0
         content_tag :span, "#{stock} available", :class => "low_stock"
       else
         content_tag :span, "Out of Stock", :class => "out_stock"
       end
     end
   
end
