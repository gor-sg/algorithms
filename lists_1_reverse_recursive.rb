class Node
  attr_accessor :name, :leave

  def initialize(name, leave = nil)
    @name = name
    @leave = leave
  end

  def to_s
    "#{@name} -> #{@leave}"
  end

  def self.parse_string(string)
    list = nil
    string.each_char.reverse_each do |char|
      list = self.new(char, list)
      p list
    end
    list
  end

  def rewire(new_list = nil)
    unless self.leave
      self.leave = new_list
      return self
    end

    list_tail = self.leave
    self.leave = new_list
    list_tail.rewire(self)
  end
end

a = Node.parse_string('abcd')
d = a.rewire
