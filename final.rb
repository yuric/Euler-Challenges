
#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

def gcd(x,y)
while y != 0 
  r = x % y 
  x = y 
  y = r 
end 
return x
end


m=2
n=1
puts "|m|m+n|n"
while (m <= 1680)
  while n<=1680
    if(1680%m==0 && 1680%(n+m)==0)
      if( ((m%2 == 0 && n%2 != 0) || (m%2 != 0 && n%2 === 0)) && (gcd(m,n)==1) && m > n)
        #puts "|#{m}|#{n+m}|#{n}|"
       # puts "x=#{2*m*n},y=#{m**2 - n**2}, z=#{m**2 + n**2}"
        x=2*m*n
        y=m**2 - n**2
        z=m**2 + n**2
        
        k=1
        while k < 1680
          if(((k*x) + (k*y) + (k*z) )==1680)
            puts "Triangle=#{x},#{y},#{z} k=#{k}"
          end
          k = k+1
        end
        
      end
    end
    n += 1
  end
  n=1
  m += 1
end