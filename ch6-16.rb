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


for m in 2..1000
  for n in 1..1000
    
      x = 2*m*n
      y = m**2 - n**2
      z = m**2 + n**2
      
      if( x**2 + 3*(y**2) == z**2)
        puts "xyz = #{x},#{y},#{z}"
      end
    n += 1
  end
  m += 1
  n = 1
end

