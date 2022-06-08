require_relative 'cantor'
require "prime"

#Generates a random Prime-number
#between the 11th and 18th prime
def newgen
iscoprime = false
p = Prime.first(rand(11..18)).last
q = Prime.first(rand(11..18)).last
#function to check if two numbers are coprime
def coprime?(a, b)
    a.gcd(b) == 1
    iscoprime = true
end

while p == q
    p = Prime.first(rand(11..18)).last
end

n = p * q
m = (p - 1) * (q - 1)
#generates Prime e and checks if it's
#coprime to m
e = Prime.first(rand(5..10)).last
coprime?(e, m)
#if not, generate it again.
while iscoprime == true
    e = Prime.first(rand(5..10)).last
    coprime?(e, m)
end
#function using the extended Euclidean
#algorythm to determine d
def extended_euclidean(a, b)
    if b == 0
        return [1, 0]
    else
        x, y = extended_euclidean(b, a % b)
        return [y, x - (a / b) * y]
    end
end
#checks if d is coprime to m or d < 1
d = extended_euclidean(e, m)[0]
if d < 0 or coprime?(d, m) == true
    d += m
end
$d = d
$n = n
$e = e
end
newgen



def returnpublickey
    cantor($e, $n)
end
def returnprivatekey
    cantor($d, $n)
end
