
require "prime"
iscoprime = false

p = Prime.first(rand(11..18)).last
q = Prime.first(rand(11..18)).last

def coprime?(a, b)
    a.gcd(b) == 1
    iscoprime = true
end

while p == q
    
end

n = p * q
m = (p - 1) * (q - 1)

e = Prime.first(rand(5..10)).last
coprime?(e, m)
while iscoprime == true
    e = Prime.first(rand(5..10)).last
    coprime?(e, m)
end

def extended_euclidean(a, b)
    if b == 0
        return [1, 0]
    else
        x, y = extended_euclidean(b, a % b)
        return [y, x - (a / b) * y]
    end
end
d = extended_euclidean(e, m)[0]
if d < 0 or coprime?(d, m) == true
    d += m
end
puts "Privater Schlüssel    :"
puts "  D: #{d}"
puts "  N: #{n}"
puts "Öffentlicher Schlüssel:"
puts "  E: #{e}"
puts "  N: #{n}"
