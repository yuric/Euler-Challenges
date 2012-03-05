#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

fib_c = Hash.new{ |h, n| 
  if n < 2  
    h[n] = n 
  else
   m = 200  # allowed stack depth, adjust according to your mechine
   while n>m
    h[m] = h[m-2] + h[m-1]
    m += 200
   end
   h[n] = h[n-2] + h[n-1] 
  end
}

fib_d = Hash.new{ |h, n| 
  if (n<2) 
    h[n] = n
  elsif n == 2
    h[n]=1
  else
    a = n/2
    b = a + n%2
    h[n] = h[a]*h[b-1] + h[a+1]*h[b]
  end
}
ind=true
i=1
digits = 1000
while(ind)
  a = fib_d[i]
  major = a.to_s
  major=major.split(//).map {|chr| chr.to_i} # finaly a easy way to split a long string into int array =)
  size = major.size
  if (size==digits)
    puts "i!=#{i}"
    puts "Fibonacci Num= #{major}"
    ind=false
  end
  i += 1
end

