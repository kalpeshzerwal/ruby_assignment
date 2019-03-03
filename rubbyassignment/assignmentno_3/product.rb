require 'json'
require_relative 'fileoperation'
class Product < Fileoperation
	def addproduct(sr_no) 
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
  def remove_products
    puts "Enter the sr_no of the product to remove a product"
    sr_no = gets.to_i
    remove = Product.new
    remove.remove_product(sr_no)
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
  def edit_products
    puts "Enter a sr_no of the produt to edit a product"
    sr_no = gets.strip.to_i
    puts "Enter the new name for this product"
    new_name = gets.strip.to_s
    puts "Enter the new price for the product"
    new_price = gets.strip.to_s
    pedit = Product.new
    pedit.edit_product(sr_no,new_name,new_price)

  end
  def buy_products 
    puts "Enter the sr_no of the product to buy"
    sr_no = gets.to_i
    puts "Enter your name"
    pname = gets.strip.to_s
    puts "Enter your card numebr"
    card_number = gets.strip.to_i
    puts "Enter your CVV"
    card_cvv = gets.strip.to_i
    customer ={sr_no: sr_no,pname: pname,card_number:card_number,cvv:card_cvv }
    pbuy = Product.new
    pbuy.buy_product(sr_no,customer) 
  end
  def srno_increment
    arr = []
    i=0
    string = File.read(FILENAME)
    string.split("\n").each do |item|
      arr[i] = item.split("|")
      i = i + 1
    end
    length = arr.length
    sr_no = length + 1
    add_product(sr_no)
  end
end	
