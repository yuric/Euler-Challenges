ct = 0
major = ""
file = File.new("p8num.txt", "r")
while (line = file.gets)
	major += line.chomp
   int  = major.to_i
  
	#puts "#{counter}: #{line}"
	#counter = counter + 1
end
puts "cut"
major=major.split(//).map {|chr| chr.to_i} # finaly a easy way to split a long string into int array =)
puts " Here=> | #{major[0]}#{major[1]}#{major[2]}#{major[3]}#{major[4]} |"
file.close
max =0
temp=1
y=0
while(ct <= major.size-5)
  i = 0
  while(i<=4)
    y=ct + i
    temp *= major[y]
    i+=1
  end
  i=0
  #puts "#{temp}"
  if (max<temp)#compare and find smaller
    max=temp
    puts max
  end
  temp=1
  ct+=1
end
puts "ITs gotta be it =>#{max}"

=begin
# Example 3 - Read File with Exception Handling
counter = 1
begin
	file = File.new("readfile.rb", "r")
	while (line = file.gets)
		puts "#{counter}: #{line}"
		counter = counter + 1
	end
	file.close
rescue => err
	puts "Exception: #{err}"
	err
end
=end