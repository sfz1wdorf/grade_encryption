puts "d:"
d = gets.to_i
puts "n:"
n = gets.to_i
puts "encrypted Message:"
T = gets.to_i


V = T**d % n

puts "decrypted message: #{V.to_f/100}"