puts "N: "
n = gets.to_i
puts "E: "
e = gets.to_i
puts "Note:"
V = gets.to_i
x = (V*100).to_i
puts x
T = x**e % n

puts "Verschlüsselte Note: #{T.to_i}" 
