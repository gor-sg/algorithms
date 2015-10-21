s = '0123456'
n = s.length
max = n - 1

0.upto(max / 2) do |i|
  s[i], s[max - i] = s[max - i], s[i]
end
