#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

=begin

2^(15) = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 2^(1000)?

=end
a=2**1000
major=a.to_s
major=major.split(//).map {|chr| chr.to_i} # finaly a easy way to split a long string into int array =)
puts a

i=0
sum=0
while(i< major.size)
  sum += major[i]
  i+=1
end
  
  
puts "The sum of all digits is: #{sum}"  
puts"#{major[0]} #{major[1]}"

