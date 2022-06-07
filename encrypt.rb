
puts "n: "
n = gets.to_i
puts "e: "
e = gets.to_i
puts "message:"
V = gets.to_i

T = V**e % n


puts "encrypted message: #{T}" 