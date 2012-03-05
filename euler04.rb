
#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License
max = 0
100.upto(999) 
{ |a|
  a.upto(999) 
  { |b|
    prod = a * b
    max = [max, prod].max if prod.to_s == prod.to_s.reverse
  }
}
puts "Maximum palindrome is #{ max }."

a = 3
b = 5
c = 7
d = 11
d = [a, c].max if a.to_s < b.to_s
puts "Here => #{d}"