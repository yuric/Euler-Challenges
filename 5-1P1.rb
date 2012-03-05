#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

e=1
mod=19 #17
num=1

while(num < mod)
  while(e <= mod)
    result = num**e % mod
    if(result==1)
      puts "num=#{num}|e=#{e}" 
      break
    end
    e = e + 1 
  end
  e=1
  num += 1
end

