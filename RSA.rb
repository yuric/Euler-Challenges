=begin
puts ?a
puts ?A
puts ?b
puts ?B 
=end 
def gcd(x,y)
  while y != 0 
    r = x % y 
    x = y 
    y = r 
  end 
return x
end
def inverse(n,mod)
  if(gcd(n,mod > 1))
    puts "No solution!"
  end
  i=1
  while(i*n < mod)
    i =+1
  end
  n = i*n + (mod % (i*n))
  inverse(i*n,mod % i*n)
end
def split(num) # slits the array into 4 digit numbers
  i=0
  j=0
  pair= Array.new
  while(num[i])
    if(num[i+1] == nil)
      pair[j] = num[i].to_s + 23.to_s # if the number of char are odd, add 23 to the end as in book
     # print "I am in=#{pair[j]}" 
     pair[j] = pair[j].to_i
    else
      pair[j]=num[i].to_s + num[i+1].to_s
       pair[j] = pair[j].to_i
     # puts "pair=#{pair[j]}"
    end
    i += 2
    j += 1
  end
  return pair
end
def mod(a) # do the moding of the string array
  i=0
  while(a[i])
    a[i] = a[i]**$e % $mod
    i = i + 1
  end
  return a
end

a='a'
i=0                             # Just post the start of the number
alfa=Hash.new   #h = { "a" => 100, "b" => 200 }
while(i<26)
  alfa.merge!({a => "%02d" % i})         # Merging one hash with the other %02 determines the number of digits with leading zeros
  a = a.next
  i += 1
end
a='a'
i=0
alfaB=Hash.new   #h = { "a" => 100, "b" => 200 }
while(i<26)
  alfaB.merge!({"%02d" % i => a })         # Merging one hash with the other %02 determines the number of digits with leading zeros
  a = a.next
  i += 1
end
#puts alfa
puts "What message would you like to encrypt?"
userIn = gets # Gets user input
puts "Now please type in the public key. Exponent, then Mod. ex:\n 11\n3127"
$e = gets.to_i
$mod = gets.to_i
#*****
userCh=userIn.split(//).map {|chr| chr.to_s} # Change string into array of char.
numArray = Array.new  #stores corresponding numbers of array of char. in loop bellow
i=0
#puts "UserCh=#{userCh[4]}"
while (i < (userCh.length - 1)) 
   numArray << "%02d" % alfa[ userCh[i] ].to_i
  i += 1 
end 
#print "HereNumArray=>#{numArray[4]}"  
rt = split(numArray)  
#puts "rt=#{rt}" # Ok rt, has the string array with 4 digits in them.
rt=mod(rt)
rtB = Array.new
while (i < (numArray.length - 1)) 
   rtB << alfaB[ numArray[i] ]
  i += 1 
end
puts "The message you typed is: #{userIn}"
puts "The encrypted Message is:\n#{rt}"
#puts "The Characters of the encrypted message is: #{rtB}"
 


