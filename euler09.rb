=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^(2) + b^(2) = c^(2)

For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

1680=
It is: a=80, b=798,c=802
It is: a=105, b=784,c=791
It is: a=112, b=780,c=788
It is: a=210, b=720,c=750
It is: a=240, b=700,c=740
It is: a=280, b=672,c=728
It is: a=336, b=630,c=714
It is: a=420, b=560,c=700
It is: a=455, b=528,c=697
It is: a=480, b=504,c=696
It is: a=504, b=480,c=696
It is: a=528, b=455,c=697
It is: a=560, b=420,c=700
It is: a=630, b=336,c=714
It is: a=672, b=280,c=728
It is: a=700, b=240,c=740
It is: a=720, b=210,c=750
It is: a=780, b=112,c=788
It is: a=784, b=105,c=791
It is: a=798, b=80,c=802
=end
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