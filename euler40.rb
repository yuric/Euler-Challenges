
#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License

file = File.open("euler40.txt","r+")
for i in (1..250000)
  file.print("#{i}")
end 
file.close
file = File.open("euler40.txt","r+") #Open again to read
text = file.read
text=text.split(//).map {|chr| chr.to_i} # finaly a easy way to split a long string into int array =)
file.close
final = text[1-1] * text[10-1] * text[100-1] * text[1000-1] * text[10000-1] * text[100000-1] * text[1000000-1]
#puts "The answer is: #{final}"

