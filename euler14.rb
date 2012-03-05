$ct = 1
$long = 0
$final = 0

def main(num)
  if(num==1)
    return $ct
  elsif(num%2==0)#If it is even
    num = num/2
    $ct += 1
    main(num)
  else         #if it is odd
    num = num*3 + 1
    $ct += 1
    main(num)
  end
end

i=1
top=100000
while(i<top)
   main(i)
  if($ct > $long)
    $long = $ct
    $final = i
  end 
  if(i%10000 == 0)
    puts i
  end
   i += 1
  $ct=1
end
puts "The One with the greatest chain is: #{$final}, with #{$long} chain"

