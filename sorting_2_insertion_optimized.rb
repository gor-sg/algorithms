n = 5
a = Array.new(n) { rand(2 * n) + 1 }
m = n - 1
p a

1.upto(m) do |i|
  j = i
  el = a[j]
  while j > 0 && el < a[j - 1]
    a[j] = a[j - 1]
    j -= 1
  end
  a[j] = el
end

p a
