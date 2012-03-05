=begin
i=0
y=0
t=1

def find(t)
  puts (t*(t+1))/2
end

find(5)
factors[]
def factor(num)
  x=2
  while (x<(num*0.5)+1)
    while(num % x == 0)
      factor << x
      num = num / x
    end
    x += 1
  end
end
factor(20)
puts factors 
=end

#-----------------------------
#!/usr/bin/ruby
# bigfact - calculating prime factors
$Fct=0
$nf=100
$false = true
def factorize(orig)
  factor=1
    while(factor<=orig)
      if(orig%factor == 0)
       # print "#{factor},"
        $Fct += 1
      end
      factor += 1
    end
    #puts "Num of factors=#{$Fct}"
    if($Fct > $nf)
      puts "There are: #{$Fct} factors."
      puts "magic Num is = #{orig}"
      $false = false
    end
    $Fct = 0
end


def find(t)
  return (t*(t+1))/2
end
#-----------------------------

i=1
while ($false)
  factorize(find(i))
  i += 1
end
#factorize(number)


#find(11169)







