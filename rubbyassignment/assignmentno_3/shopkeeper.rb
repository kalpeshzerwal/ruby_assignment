require_relative 'product'
class Shopkeeper
	def shopkeeper
		puts 'Enter Product choice for product operation 1.add 2.remove 3.list 4.serach 5.edit'
		choice =gets.to_i
		case choice
		when 1
			product_add = Product.new
			product_add.addproduct
		when 2
			product_remove = Product.new
			product_remove.remove_products
		when 3
			product_list = Product.new
			product_list.list_products
		when 4
			product_search = Product.new
			product_search.search_products
		when 5
			product_edit = Product.new
			product_edit.edit_products
		else
			puts 'invalid input'
		end								
	end
end		