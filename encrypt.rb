# queries N
puts "N: "
n = gets.to_i

# queries E
puts "E: "
e = gets.to_i

# queries M
puts "Note:"
M = gets.to_f

# processes decimal numbers
x = (M*100).to_i

# calculates C (C = M^e  mod  N)
C = x**e % n

# outputs C
puts "Verschlüsselte Note: #{C.to_i}" 
