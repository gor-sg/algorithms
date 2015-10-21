s = '012345678'
m = x.length - 1 # 8
p s

0.upto(m - 1) do |i|
  j = i + rand(m - i) + 1
  s[i], s[j] = s[j], s[i]
end
p s

# m|i|j
# 8,0,1..8
# 8,1,2..8
# 8,2,3..8
