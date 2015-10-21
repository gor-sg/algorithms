a = Array.new(10) { rand(10) }.sort
b = rand(10)

p a, b

def rank(a, b)
  min = 0
  max = a.length - 1

  while min <= max
    mid = (min + max) / 2
    puts "#{min} - #{mid} - #{max}"

    if b > a[mid]
      min = mid + 1
    elsif b < a[mid]
      max = mid - 1
    else
      return mid
    end
  end
end

position = rank(a, b)
if position
  puts "position = #{position}"
else
  puts "not found"
end
