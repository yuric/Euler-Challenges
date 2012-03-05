sum = 0
i = 0
max = 1000
while i < max
  if(i%3==0 || i%5==0)
    sum += i
  end
  i+=1
end
  puts i
  puts sum
# comments
=begin
=end

size = 40
i=1

def fibo(n)
    return 1 if n == 0 || n == 1
    return fibo(n-1) + fibo(n-2)
end
k=0
puts"-.-.-.-.-.-.-.-"
a= "1234yu5"
b = []
  a.scan(/[0-9]/) do |z|
       b << z
  end
puts b

