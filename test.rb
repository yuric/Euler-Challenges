numFact = 500

def find(t)
  return (t*(t+1))/2 # triangular number
end




def findAll(number)
  x = 1
  i=0
  factors = []
  begin
    if(number%x==0)
      factors[i] = x
      i += 1
    end
  x+=1
  end until x >= (number+1)
  #puts factors
  #puts factors.size
  return factors.size #number of divisors
end
#.-.-.-.-.-.-.-.-.-.-.-.
i=9000
nDiv=500
flag = false

y=findAll(7**4*3**2)
print y
while(flag)
  
  if(findAll(find(i))>=nDiv)
    puts "oh my goodness"
    my_file = File.new("euler12.txt", "w")
    my_file.puts "i=#{i}, triangular Number =#{find(i)}, Divisors=#{nDiv}"
    puts "i=#{i}, triangular Number =#{find(i)}"
    flag = false
  end
  i+=1
  
end



