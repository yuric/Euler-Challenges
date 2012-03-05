#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

def amic (a)
  array = []
  i = 1
  while i < a
    if (a%i == 0)
      array << i
    end
    i = i+1
  end
  sum = 0
  
  # returns the sum of the elements in the array
  return array.inject(0) { |s,v| s += v } 
end

# exection
array = []
lambda = 1
while (lambda <= 10_000)
  test = lambda
  sum = amic(test)
  if ( test == amic(sum)  && test != sum)
    array << test
    puts "test=#{test}"
  end
  lambda += 1
end
puts array.inject(0) { |s,v| s += v } 
file = File.open("euler21.txt","r+")
  file.print("#{array}")
  file.print("\n\n\n\n Sum=#{array.inject(0) { |s,v| s += v } }")
file.close