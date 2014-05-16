#!/usr/bin/env ruby

class ListItem
  attr_accessor :nxt, :letter

  def initialize(letter)
    @letter = letter
  end

  def to_s
    out = @letter
    out += " -> #{nxt}" if nxt
    out
  end
end

a = ListItem.new('A')
b = ListItem.new('B')
c = ListItem.new('C')
d = ListItem.new('D')
e = ListItem.new('E')

a.nxt = b
b.nxt = c
c.nxt = d
d.nxt = e

def reverse(current, new_list = nil)
  if current.nxt
    nxt = current.nxt
    current.nxt = new_list

    reverse(nxt, current)
  else
    current.nxt = new_list
    return current
  end
end

puts a
a = reverse(a)
puts a

# output
# A -> B -> C -> D -> E
# E -> D -> C -> B -> A
