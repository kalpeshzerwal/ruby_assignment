require_relative 'customer'
require_relative 'shopkeeper'
class Shop
	def user_input 
		puts 'enter 1 for shopkeeper and 2 for customer'
		choice = gets.to_i
		case choice
			when 1
				shopkeeper_obj = Shopkeeper.new	
				shopkeeper_obj.shopkeeper
			when 2
		  	customer_obj = Customers.new
		  	customer_obj.customers
		  else
		  	puts'invalid input'
		end
	end 	
end
user_obj = Shop.new
user_obj.user_input