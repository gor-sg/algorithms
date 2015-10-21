a = Array.new(10) { rand(10) }.sort
b = rand(10)

p a, b

def rank(a, b, min = 0, max = a.length - 1)
  return if min > max

  mid = (min + max) / 2
  puts "#{min} - #{mid} - #{max}"

  if b > a[mid]
    rank(a, b, mid + 1, max)
  elsif b < a[mid]
    rank(a, b, min, mid - 1)
  else
    return mid
  end
end

position = rank(a, b)
if position
  puts "position = #{position}"
else
  puts "not found"
end
