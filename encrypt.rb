require_relative 'cantor'
#pulls the cantor function from the cantor.rb file
#asks for public key
puts "öffentlicher Schlüssel:"
L = gets.to_i
#asks for M
puts "Note:"
M = gets.to_f
# processes decimal numbers
x = (M*100).to_i
e, n = inv_cantor(L)

# calculates C (C = M^e  mod  N)
C = x**e % n

# outputs C
puts "Verschlüsselte Note: #{C.to_i}" 
