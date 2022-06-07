puts "N: "
n = gets.to_i
puts "E: "
e = gets.to_i
puts "Note:"
V = gets.to_f
x = (V*100).to_i
T = x**e % n

puts "Verschlüsselte Note: #{T.to_i}" 
