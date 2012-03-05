def factor(n)
  i=2 # start at 2 since all is divisible by one
  prime = true
  #print "Factors of #{n}: "
 while( i < Math.sqrt(n)+1 ) # only test up to the square root of the number
   if(n%i == 0)
    # print "#{i},"
     prime = false
   end
   i += 1
  end
  if (prime == true) 
    puts "#{n} is a prime number. Found in: #{Time.now - $start} seconds" # since last prime number found
    $start = Time.now 
  end
    
end

#-.-.-.-Execution

lim = 10_000_000_000_000_000_000
i =   100_000_000_001
puts "The following numbers have: digits."
$start = Time.now 
while (i < lim)
  factor(i)
  i += 2 # only need to test every other number since even number cannot be prime
  #sleep(10)
end

