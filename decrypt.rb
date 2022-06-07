puts "D:"
d = gets.to_i
puts "N:"
n = gets.to_i
puts "Verschlüsselte Note:"
T = gets.to_i


V = T**d % n

puts "Deine Note: #{V.to_f/100}"
