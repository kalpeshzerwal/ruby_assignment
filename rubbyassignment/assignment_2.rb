array_1 = [2, 4, 6, 8, 10]
array_2 = [1, 5, 6, 8, 11, 12]

hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

	puts'1. Print "Hello World" 10 times'
	10.times{puts "Hello world"}

	puts'************************************************************************'

	puts'2. Print number from 30 to 40'
	range = (30..40).to_a
	puts range

	puts'************************************************************************'

	puts'3. Combine array_1 & array_2 and make elements it uniq'
	array_3=(array_1 +array_2).uniq
	puts array_3

	puts'************************************************************************'

	puts'4.Combine array_1 & array_2 and keep only even elements'
		array_3=array_1 + array_2
		result=array_3.uniq
		index=0
		while index<result.length
			if result[index]%2==0
				puts result[index]
			end
			 index=index+1
		end
		
	puts'************************************************************************'
	
	puts'5.Combine array_1 & array_2 and delete elements if greater than 8'
		array_3=array_1 + array_2
		result=array_3.uniq
		index=0
		while index<result.length
			if result[index]<8
				puts result[index]
			end
			 index=index+1
		end	

	puts'************************************************************************'

	puts'6.array_1 make cubes of all elements and add them '
		puts array_3=array_1.map{|n| n*n*n}
		puts	array_3.inject(0){|sum,i| sum+i}


	puts'************************************************************************'
	
	puts'7.Combine array_1 & array_2 and find index of 8'
		puts array_3=array_1+array_2
		puts array_3[8]

	puts'************************************************************************'

	puts'8.array_1: add 5 to each element '
		puts array_1.map{|n| n+5}

	puts'************************************************************************'

	puts'9. combine hash_1 & hash_2'
		puts hash_3=hash_1.merge(hash_2)

	puts'************************************************************************'
	
	puts'10.replace values of hash_1 with elements from array_1'	
		hash_1.each_with_index  do|x,y|
		puts hash_1[x[0]]=array_1[y]
		end	

	puts'************************************************************************'
	
	puts'11.Make sum of integer values of hash_2'
		hash_2.each{|k,v| hash_2 [k]=v.to_i}
		w=hash_2.values.inject(:+)
		puts w

	puts'************************************************************************'
	
	puts'12.Make upcase of all values of hash_1'
		hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
		new_hash=hash_1.each{|k,v| hash_1[k]=v.upcase}
		puts new_hash


