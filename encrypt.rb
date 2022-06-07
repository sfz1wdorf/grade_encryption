
puts "n: "
n = gets.to_i
puts "e: "
e = gets.to_i
puts "message:"
V = gets.to_f
x = (V*100).to_i
puts x
T = x**e % n

puts "encrypted message: #{T.to_i}" 