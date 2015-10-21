s = '1'

class String
  def say
    self.gsub(/(.)\1*/) {|s| s.size.to_s + s[0]}
  end
end

s.say
10.times { s = s.say; p s}
