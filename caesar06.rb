#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

a='a'
i=0
alfa=["a"]
while(i<26)
  alfa[i] = a
  a = a.next
 # puts "#{i}-#{alfa[i]}"
  i += 1
end

#-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-

p1 = 0
p2 = 0
i=true
a = 100
while(p1<a)
  while(p2<a)
    if (((2*p1 + 3*p2)%26) == 15 && ((5*p1 + 2*p2)%26) == 3 )
      puts "p1=#{alfa[p1]}\np2=#{alfa[p2]}\n\n"
    end
    p2 += 1
  end
  p2 = 0
  p1 += 1
  a -= 1
end

