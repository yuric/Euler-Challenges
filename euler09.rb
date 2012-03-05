#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License
a=1
b=1
c=1
r=1680
i=0
while(a<r)
  while(b<r)
       while(c<r)
            i+=1
            if( a+b+c==r && a**2 + b**2==c**2) #&& a**2 + b**2==c**2
              puts "It is: a=#{a}, b=#{b},c=#{c}"
            end
       c+=1
       end
  b+=1
  c=1
  end
a+=1
b=1
c=1
end
puts i