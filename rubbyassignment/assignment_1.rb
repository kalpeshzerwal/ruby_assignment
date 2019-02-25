   string_1 = "I am learning Ruby language."
   string_2 = "why? Coz it's cool and I like it."

    puts 'Make string_1 capital case(not uppercase)'
    puts string_1.split.map(&:capitalize).join(' ')

    puts 'Make string_1 lower case'
    puts string_1.split.map(&:downcase).join(' ')

    puts 'Change the string_1s each letters case to opposite case.'
    puts string_1.split.map(&:upcase).join(' ')

    puts'Print string_1s characters count'
    puts string_1.size

    puts'Check if string_1 contains the word "ruby"'
    if string_1.include? "ruby"
    	puts "String_1 includes 'ruby' "
    end

    puts 'Split string_2 by ?'
    puts string_2.split("?")

    puts 'Concat string_1 and string_2'
    puts string_1 + string_2

    puts 'Concatenated string, change from "I" to "We" and make the sentence in the capital case.'
    string_3= string_1 + string_2
    puts string_3.gsub!("i","we")

    puts 'Convert string_1 to a symbol'
    string_4=string_1.to_sym
    puts string_4.class

    puts 'List methods available on methods'
    puts String.methods

    puts 'Print strings length difference'
    string_3=string_1.length
    string_4=string_2.length
    puts string_4 - string_3 

    puts'Convert `nil` to a) array, b) string and c) float.'
    puts nil.to_a
    puts nil.to_s
    puts nil.to_f

    puts 'Write a method which tells if the number is even or odd?'
   	puts("enter a number to check");
   	num=gets;
   	num=num.to_i;
   	if(num%2==0)
   		then
   	puts "" +num.to_s+ "is even";
   		else
   	puts "" +num.to_s+ "is odd"
   		end

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