module Enumerable
  def new_any? &block
    self.each do |elem|
      return true if yield elem
    end
    false
  end
end

arr = (1..10).to_a
puts arr.new_any? {|e| e > 6}
