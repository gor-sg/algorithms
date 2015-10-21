n = 5
a = Array.new(n) { rand(2 * n) + 1 }
m = n - 1
p a

n.times do |i|
  i_min = i
  (i + 1).upto(m) do |j|
    if a[j] < a[i_min]
      i_min = j
    end
  end
  a[i], a[i_min] = a[i_min], a[i]
end

p a
