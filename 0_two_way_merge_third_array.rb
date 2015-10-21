a = Array.new(rand(10) + 1) { rand(10) + 1 }.sort
b = Array.new(rand(10) + 1) { rand(10) + 1 }.sort
c = []

puts "a = #{a}"
puts "b = #{b}"

i = a.length - 1
j = b.length - 1
k = a.length + b.length - 1

while i >= 0 && j >= 0 do
  if a[i] > b[j]
    c[k] = a[i]
    i -= 1
  else
    c[k] = b[j]
    j -= 1
  end
  k -= 1
end

while j >= 0 do
  c[k] = b[j]
  k -= 1
  j -= 1
end

while i >= 0 do
  c[k] = a[i]
  k -= 1
  i -= 1
end

puts "\nresult = #{c}"
