class Node
  attr_accessor :name, :leave
  private_class_method :new

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
      list = new(char, list)
      p list
    end
    list
  end
end

Node.parse_string('abcdef')
