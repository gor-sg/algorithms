class Array
  def my_inject(memo = 0)
    self.each do |e|
      if block_given?
        memo += yield e
      else
        memo += 1
      end
    end
    memo
  end
end

[1, 2, 3].my_inject
