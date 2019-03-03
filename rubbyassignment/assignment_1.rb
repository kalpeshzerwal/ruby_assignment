   string_1 = "I am learning Ruby language."
   string_2 = "why? Coz it's cool and I like it."

    puts 'Make string_1 capital case(not uppercase)'
    puts string_1.split.map(&:capitalize).join(' ')


    puts"************************************************************************************"

    puts 'Make string_1 lower case'
    puts string_1.split.map(&:downcase).join(' ')

    puts"************************************************************************************"

    puts 'Change the string_1s each letters case to opposite case.'
    puts string_1.split.map(&:swapcase).join(' ')

    puts"************************************************************************************"

    puts'Print string_1s characters count'
    puts string_1.size

    puts"************************************************************************************"

    puts'Check if string_1 contains the word "ruby"'
    if string_1.include? "ruby"
    	puts "String_1 includes 'ruby' "
    end

    puts"************************************************************************************"

    puts 'Split string_2 by ?'
    puts string_2.split("?")

    puts"************************************************************************************"

    puts 'Concat string_1 and string_2'
    puts string_1 + string_2

    puts"************************************************************************************"

    puts 'Concatenated string, change from "I" to "We" and make the sentence in the capital case.'
    string_3= string_1 + string_2
    puts string_3.gsub!("i","we")


    puts"************************************************************************************"

    puts 'Convert string_1 to a symbol'
    string_4=string_1.to_sym
    puts string_4.class

    puts"************************************************************************************"


    puts 'List methods available on methods'
    puts String.methods


    puts"************************************************************************************"

    puts 'Print strings length difference'
    string_3=string_1.length
    string_4=string_2.length
    puts string_4 - string_3 

    puts"************************************************************************************"


    puts'Convert `nil` to a) array, b) string and c) float.'
    puts nil.to_a
    puts nil.to_s
    puts nil.to_f


    puts"************************************************************************************"


    puts 'Write a method which tells if the number is even or odd?'
   	puts("enter a number to check");
   	num=gets;
   	num=num.to_i;
   	if(num%2==0)
   		puts "" +num.to_s+ "is even";
   	else
   		puts "" +num.to_s+ "is odd"
   	end

    puts"************************************************************************************"

   	puts 'Program to Check Vowel or consonant'
   	String gets;
   	if String =="a" && "e" && "i" && "o" && "u";
   		puts "string is vowels";
   	else
   		puts "string is consonant"
   	end

   puts 'fibonacci series'	
   class Fib
   	def series
   		puts "enter the fibonacci values"
   		n=gets.to_i
   		f1=0;
   		f2=1;
   		f3=0;
   	while f3<n do
		f3=f1+f2
		puts f3
		f1=f2
		f2=f3   		
   	  end	
    end
  end
  obj1=Fib.new;
  obj1.series

  puts"************************************************************************************"

  puts'Display Prime Numbers between Two Intervals'
    class Prime
      def number
        puts "Enter starting number"
        first = gets.to_i
        puts "Enter last number"
        last = gets.to_i
        (first..last).each do |n|
          i=2
          count =0
          while i < n
            if n % i == 0
              count +=1
            end
            i = i+1
          end
          if count==0
            puts "#{n}"
          end                          
        end
      end
    end
  p_obj = Prime.new
  p_obj.number 

  puts"************************************************************************************"

  puts'Program to Make a Simple Calculator (Addition, Subtraction, Multiplication, Division)'
  class Calculator
    def check
      puts 'enter your choice:1.add 2.sutraction 3.multiplication 4.division'
      choice = gets.to_i
      puts "enter your number_1"
      number_1 = gets.to_i
        puts "enter your number_2"
      number_2 = gets.to_i
      case choice
      when 1
      addition = number_1+number_2
      puts addition

      when 2
      subtraction = number_1-number_2
      puts subtraction

      when 3
      multiplication = number_1 * number_2
      puts multiplication

      when 4
      division = number_1/number_2
      puts division

      else
      puts"invalid choice"
        end
      end
    end
  object_1=Calculator.new;
  object_1.check