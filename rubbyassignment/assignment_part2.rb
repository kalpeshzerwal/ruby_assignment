puts'***********************************************************************************'
puts 'Write a method which takes 3 arguments number1, number2, block and return the output
Create 4 blocks which can be passed as 3rd arguments: operations can be add, substract, multiply, divide'

def mymethod(num1,num2,block)
	return block.call(num1,num2)
end
puts "enter a first number"
	var_1=gets.to_i
puts "enter second number"
	var_2=gets.to_i

addition = Proc.new{|x,y| x+y}
subtraction = Proc.new{|x,y| x-y}
multiplication = Proc.new{|x,y| x*y}
division = Proc.new{|x,y| x/y}

puts mymethod(var_1,var_2,addition)
puts mymethod(var_1,var_2,subtraction)
puts mymethod(var_1,var_2,multiplication)
puts mymethod(var_1,var_2,division)


puts'*************************************************************************************'

puts '2. write a method: "compose" which takes two procs and returns a new proc which, when called, calls the first proc and passes its result'
puts 'into the second proc. both of the proc arguments takes a number argument'
   
    def compose proc_1, proc_2
      Proc.new do |x|
        proc_2.call(proc_1.call(x))
      end
    end
    double = Proc.new do |x|
      x + x
    end
  	square = Proc.new do |x|
      x * x
    end

doubleThenSquare = compose double, square
puts doubleThenSquare.call(5)


puts '*************************************************************************************'
puts '3. Write a lambda which takes first_name and last_name and returns full_name.'
    mylambda = ->(x,y) { x + y }
puts mylambda.call('kalpesh','zerwal')