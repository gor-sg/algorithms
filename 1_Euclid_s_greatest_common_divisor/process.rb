require 'optparse'

@options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: process.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    @options[:verbose] = v
  end
end.parse!

def o(str)
  puts str if @options[:verbose]
end

def process(p, q)
  o "p = #{p}, q = #{q}"
 
  if q == 0
    o "q = 0. p = #{p} is greatest common divisor"
    p
  else
    r = p % q
    o "p % q = #{r}"
    o "calculate for #{q} and #{r}"
    process(q, r)
  end
end

gcd = process(*ARGV.map(&:to_i))
puts "Greatest common divisor = #{gcd}" 
