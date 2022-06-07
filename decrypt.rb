# queries D
puts "D:"
d = gets.to_i

# queries N
puts "N:"
n = gets.to_i1

# queries C
puts "Verschlüsselte Note:"
C = gets.to_i

# calculates M (M = C^d  mod  N)
M = C**d % n

# outputs M
puts "Deine Note: #{M.to_f/100}"
