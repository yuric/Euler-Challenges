#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

i=1
sumOfSquare = 0
squareOfSum = 0


while i <= 100
  sumOfSquare += i**2
  i+=1
end
i=0
while i <= 100
  squareOfSum += i
  i+=1
end
squareOfSum = squareOfSum**2

puts "sumOfSquare = #{sumOfSquare}"
puts "squareOfSum = #{squareOfSum}"

dif = squareOfSum - sumOfSquare

puts "diference is= #{dif}"