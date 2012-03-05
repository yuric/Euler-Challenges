#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

def mod(m,x,e)

x**e % m
end

puts mod(10,7,4)


#.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

mod = 2623
rmd = 2849
x = 2
while x < 512
  rmd = rmd**x%mod
  x = x*2
  puts "rmd=#{rmd}, x=#{x},mod=#{mod}" 
end

puts *(1..10)