=begin

2^(15) = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 2^(1000)?

=end
def fact(x)
    if x==0
      return 1
    end 
    else 
      x * fact(x-1)
    
      
 end
 
a=fact(100)
major=a.to_s
major=major.split(//).map {|chr| chr.to_i} # finaly a easy way to split a long string into int array =)
puts "here"
puts 158 * 4.5 

i=0
sum=0
while(i< major.size)
  sum += major[i]
  i+=1
end
  
puts 274240 / 40320 
puts "The sum of all digits are: #{sum}"  
puts"#{major[0]} #{major[1]}"

