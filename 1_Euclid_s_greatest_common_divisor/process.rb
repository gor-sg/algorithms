require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end.parse!

def process(p, q)
  return p if q == 0
  r = p % q
  return process(q, r)
end

gcd = process(*ARGV.map(&:to_i))
puts "Greatest common divisor = #{gcd}" 
