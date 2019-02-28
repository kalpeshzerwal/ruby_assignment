require 'json'
require_relative 'fileoperation'
class Product < Fileoperation
	def addproduct 
		sr_no=1
		puts 'Enter the Name of product'
		product_name = gets.strip
		puts 'Enter Product price'
		price = gets.strip
		puts 'Enter stock item'
		stock = gets.strip
		puts 'Enter company_name'
		company_name = gets.strip
		product_details = {sr_no: sr_no,product: product_name,price: price,stock: stock,company_name: company_name}
		file = Product.new
		file.add_product(product_details)
		sr_no+=1
  end
  def list_products
  	list=Product.new
  	list.list_product
  end
  def search_products  	
  	puts "Please enter a word to find in text file"
  	name = gets.to_s
  	search=Product.new
  	search.search_product(name)
  end	
end	
