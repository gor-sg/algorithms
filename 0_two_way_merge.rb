a = Array.new(rand(20) + 1) { rand(20) + 1 }.sort
b = Array.new(rand(20) + 1) { rand(20) + 1 }.sort

puts "a = #{a}"
puts "b = #{b}"

i = a.length - 1
j = b.length - 1
k = a.length + b.length - 1

while i >= 0 && j >= 0 do
  if a[i] > b[j]
    a[k] = a[i]
    i -= 1
  else
    a[k] = b[j]
    j -= 1
  end
  k -= 1
end

while j >= 0 do
  a[k] = b[j]
  k -= 1
  j -= 1
end

puts "\nresult = #{a}"
