require_relative 'product'
FILENAME="productsdata.txt"
REPLACE = "productremove.txt"
CUSTOMER_FILE = "customer.txt"
class Fileoperation
	def add_product(product_details)
		f = File.open(FILENAME, 'a')
		p product_details.values.join("|")  
		f.write(product_details.values.join("|"))
		f.close
	end	

	def remove_product(id)
    string = File.read(FILENAME)
    string.split("\n").each do |item|
      var = item.split("|")
      if var[0].to_i != id 
        re_write = File.open(REPLACE, 'a+')
        re_write.write(var.join('|')+"\n")
      end
    end
    File.delete(FILENAME)
    File.rename(REPLACE, FILENAME)   
  end

	def list_product
		data = File.open(FILENAME,'r')
		data.each do |list|
			puts list
		end
	end	

	def search_product(name)		
		psearch=File.read(FILENAME) 
		psearch.split("\n").each do |i|
			index = i.split("|")
				if index[1] == name
				 	break
			  end	
			p index[1],index[2],index[3]
	  end	
	end

	def edit_product(sr_no,new_name,new_price)
    string = File.read(FILENAME)
    string.split("\n").each do |i|
    idx = i.split("|")
    if idx[0].to_i == sr_no 
      idx[1] = new_name
      idx[2] = new_price
      re_write = File.open(REPLACE, 'a+')
      re_write.write(idx.join('|')+"\n")
    else
      re_write = File.open(REPLACE, 'a+')
      re_write.write(idx.join('|')+"\n")
    end
    end
    File.delete(FILENAME)
    File.rename(REPLACE, FILENAME)
  end

  def buy_product(sr_no,customer)
    check = File.read(FILENAME)
    check.split("\n").each do |x|
      idx = x.split("|") 
      if idx[0].to_i.eql?(sr_no)
        if idx[3].to_i != 0
        	  p idx[3]
          cust_info(customer) 
          stock(sr_no)
        else
          puts "PRODUCT IS NOT AVAILABLE"
        end        
      end 
    end
  end  

   def cust_info(customer)
    add = File.open(CUSTOMER_FILE, 'a+')
    add.write(customer.values.join('|')+"\n")
    add.close
  end

  def stock(sr_no)
    string = File.read(FILENAME)
    string.split("\n").each do |item|
    idx = item.split("|")
    
    if idx[0].to_i == sr_no 
      minus = idx[3].to_i
      minus = minus - 1
      idx[3] = minus
      re_write = File.open(REPLACE, 'a+')
      re_write.write(idx.join('|')+"\n")
    else
      re_write = File.open(REPLACE, 'a+')
      re_write.write(idx.join('|')+"\n")
    end
    end
    File.delete(FILENAME)
    File.rename(REPLACE, FILENAME)
  end
end
 

	