counter=1
int=0
file = File.new("p13num.txt", "r")
while (line = file.gets)
	major = line
   int  += major.to_i
  
	puts "#{counter}: #{line}"
	counter = counter + 1
end
puts int