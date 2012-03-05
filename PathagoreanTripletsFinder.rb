#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

# Primitive Pythagorian Triplets finder.

def gcd(x,y)
while y != 0 
  r = x % y 
  x = y 
  y = r 
end 
return x
end

n=1
m=2

z=1
y=1
x=1

while(m<51)
  while(n<51)
    #Just Triplets
  if(m>n)
    puts "x=#{2*m*n},y=#{m**2 - n**2}, z=#{m**2 + n**2}
  end
    # PPT.First make sure one is even other is odd        Then check to see gcd=1   Self. Explan.
    if( ((m%2 == 0 && n%2 != 0) || (m%2 != 0 && n%2 === 0)) && (gcd(m,n)==1) && m > n)
     #puts"M=#{m}\nN=#{n}\n"
     #puts "PT is= #{2*m*n} + #{m**2 - n**2} = #{m**2 + n**2}"
      x=2*m*n
      y=m**2 - n**2
      z=m**2 + n**2
      puts "                                            P.P Triplets  xyz = #{x},#{y},#{z}"
      
    end
    n += 1
  end
  m += 1
  n = 1
end
puts 6**2 + 8**2
