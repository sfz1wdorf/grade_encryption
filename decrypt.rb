require_relative 'cantor'
#pulls private key from user
puts "privater Schlüssel:"
L = gets.to_i
d, n = inv_cantor(L)
puts n
puts d
# pulls C
puts "Verschlüsselte Note:"
C = gets.to_i

# calculates M (M = C^d  mod  N)
f = C % n

M = f**d % n

# outputs M
puts "Deine Note: #{M.to_f/100}"

