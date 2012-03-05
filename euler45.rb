$t
$p
$h

def tri(n)
  $t = n*(n + 1)/2
end
def pent(n)
  $p = n*(3*n - 1)/2
end
def hex(n)
  $h = n*(2*n - 1)
end

tri(1)
pent(1)
hex(1)

puts $t,$p,$h

i=1
lim=27_695
p=2#165
t=2#285
h=2#143
while(i<lim)
 hex(i)           # call i on hex because hex is always going to be bigger
  while($h > $p)
    p += 1
    #puts "p=#{p}"
    pent(p)
  end 
  while($h > $t)
    tri(t+1)
    t += 1
    #puts "t=#{t}"
    #puts "p=#{p}"
    #puts "$t=#{$t}"
    #puts "i=#{i}" 
    if($p == $h && $h == $t)
      puts "pent, tri and hex are the same\n$p=#{$p},$h=#{$h},$t=#{$t}\n"
      puts "i=#{i}" 
    end
  end
  i = i + 1 
end
puts "pent, tri and hex are the same\n$p=#{$p},$h=#{$h},$t=#{$t}\n"
