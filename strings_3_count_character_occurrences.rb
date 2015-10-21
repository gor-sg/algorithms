s = 'abccdcddefghhh'
h = Hash.new(0)

s.each_char { |s| h[s] += 1 }
p h
# p h.select { |k,v| v > 1 }
