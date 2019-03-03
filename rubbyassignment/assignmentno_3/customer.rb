require_relative 'product'

class Customers
  def customers
   puts 'Enter Product choice for product operation 1.list 2.search 3.buy'
    choice =  gets.to_i
    case choice
      when 1
        list = Product.new
        list.list_products
      when 2
        search = Product.new
        search.search_products
      when 3
        buy = Product.new
        buy.buy_products
      else
        puts "invalid choice"
    end    
  end
end

