#!/usr/bin/env ruby

=begin
Author: Amelie Cameron
Due: 10/25/17
Prof. Souza
CSC 600-03
=end

# 1) Give an example of a Ruby proc that satisfies the given condition.

#   a) Anonymous function and its use
    
    array.each{|a| puts a}     

#   b) Define and use named functions

    def isEqual(a, b)
    	if a != b
       	   puts "not equal"
        else
	   puts "equal"
	end
    end

#   c) Data structure(list) that contains functions

    array = [functionA, functionB, functionC]

#   d) Compare functions and lists for equality
    
    array1 = [1..100]
    array2 = [1..100]
    i = 0
    j = 0 
    for i in array1[]
    	for j in array2[]
	    if array1[i] != array2[j]
	       puts "lists are different"
	    end
	    i++
	    j++
        end
    end   

#   e) Pass function as an argument to another function
    
    def function1(function2)
    	function2()
    end

#   f) Return a function as a result of another function
    
    def function1(x)
    	if x == 3 
	   function3(x)
    	elsif x == 4
	   function4(x)
	else
	   function(x)   
    end

# 2) Compute the sum of the first 20 natural numbers whose square value is divisible by 2 (adhere to functional programming rules.) 

s = (0..100).select{ |n| n**2 % 2 ==0}.take(20).inject(:+) 
puts s

# 3) Compute all the leap years between the years 1800 and 2100 inclusive (adhere to functional programming rules.) 
  
  startYear = 1800
  endYear = 2100
  i = startYear
  def leapYear(x)
      (!(x % 100 == 0) && (x % 4 == 0)) || (x % 400 == 0)
  end 
  puts 'Leap years between 1800 and 2100 inclusive:'
  for i in startYear..endYear
      if leapYear(i)
        puts i
     end
  end

# 4) Collect words from string that contain the vowels 'a' and 'e' (adhere to functional programming rules, create large string for testing.) 
  
testString = String.new('This is a sting to test my ruby code')
testWords = testString.split(/\s/)
testWords.each{ |c|
  if((c.include? "a") || (c.include? "e"))
      puts c
  end
}
		