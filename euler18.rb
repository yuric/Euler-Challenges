#by Yuri Costa
#Euler challanges at http://projecteuler.net/
#MIT License
a=[75]
b=[95, 64]
c=[17, 47, 82]
d=[18, 35, 87, 10]
e=[20, 04, 82, 47, 65]
f=[19, 01, 23, 75, 03, 34]
g=[88, 02, 77, 73, 07, 63, 67]
h=[99, 65, 04, 28, 06, 16, 70, 92]
i=[41, 41, 26, 56, 83, 40, 80, 70, 33]
j=[41, 48, 72, 33, 47, 32, 37, 16, 94, 29]
k=[53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14]
l=[70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57]
m=[91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48]
n=[63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31]
o=[04, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 04, 23]

all = Array.new(){Array.new()}

all[0...14]=[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o]

puts "It is #{all[d[2]]}"
=begin
all.length.times do |i|
  puts i.to_s + "| " + all[i].sort.to_s
    all[i].length.times do |j|
      puts all[i[j]].sort.to_s
    end
end
=end