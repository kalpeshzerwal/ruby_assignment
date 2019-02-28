require_relative 'product'
FILENAME="productsdata.txt"
class Fileoperation
	def add_product(product_details)
		f = File.open(FILENAME, 'a')
		p product_details.values.join("|")  
		f.write(product_details.values.join("|")."\n")
		f.close
	end	
	def list_product
		data = File.open(FILENAME,'r')
		data.each do |list|
			puts list
		end
	end	
	def search_product(name)		
		productsearch=File.read(FILENAME) 
		productsearch.split("\n").each do |i|
			index = i.split("|")
				if index[1] == name
				 	break
			  end	
			 p index[1],index[2]
	  end	
	end
end  

	