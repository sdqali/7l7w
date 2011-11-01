module Enumerable
  def new_all? &block
    self.each do |elem|
      return false unless yield elem
    end
    true
  end
end

arr = (1..10).to_a
puts arr.new_all? {|e| e < 10}
