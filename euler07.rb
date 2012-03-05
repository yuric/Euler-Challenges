#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

# prime numbers are only divisible by unity and themselves
# (1 is not considered a prime number by convention)

def isprime(n)
  
    for x in (3..(n**0.5).abs+2)
        if n % x == 0
            return false
        end
    return true
    end
end
     

# test ...
=begin
go=5
i=3	
while (i < 1001)
	if (isprime(go))
		i+=1
		puts go
	end
	go += 2
	if(i==1001)
	  puts"1001=#{go}"
  end
end
=end
	
puts "Here it goes"   
puts isprime(25)       # False
puts isprime(2)       # True
puts isprime(3)       # True
puts isprime(29)      # True
puts isprime(345)     # False
puts isprime(999979)  # True
puts isprime(999981)  # False