class Node
  attr_accessor :name, :leave

  def initialize(name, node = nil)
    @name = name
    @leave = node
  end

  def to_s
    "#{@name} -> #{@leave}"
  end
end

a = Node.new('A')
b = Node.new('B', a)
c = Node.new('C', b)
d = Node.new('D', c)

puts d
