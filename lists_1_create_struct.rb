class Node < Struct.new(:name, :leave)
  def to_s
    "#{self[:name]} -> #{self.leave}"
  end
end

a = Node.new('A')
b = Node.new('B', a)
c = Node.new('C', b)
d = Node.new('D', c)

puts a
