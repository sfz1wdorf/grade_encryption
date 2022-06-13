require_relative 'cantor'

#pulls the cantor function from the cantor.rb file
#asks for public key
puts "öffentlicher Schlüssel:"
L = gets.to_i
#asks for M
puts "Note:"
M = gets.to_f
# processes decimal numbers

def encrypt(m, l)
x = (m*100).to_i
e, n = inv_cantor(l)

# calculates C (C = M^e  mod  N)
c = x**e % n
return c

end
# outputs C
C = encrypt(M, L)

puts "Verschlüsselte Note: #{C}" 
