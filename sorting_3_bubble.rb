n = 5
a = Array.new(n) { rand(2 * n) + 1 }
m = n - 1
p a

(n - 1).times do
  swapped = false
  0.upto(m - 1) do |i|
    if a[i] > a[i + 1]
      a[i], a[i + 1] = a[i + 1], a[i]
      swapped = true
    end
  end
  break unless swapped
  m -= 1
end

p a
