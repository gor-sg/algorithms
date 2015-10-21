n = 5
a = Array.new(n) { rand(2 * n) + 1 }
m = n - 1
p a

1.upto(m) do |i|
  j = i
  while j > 0 && a[j] < a[j - 1]
    a[j], a[j - 1] = a[j - 1], a[j]
    j -= 1
  end
end

p a
