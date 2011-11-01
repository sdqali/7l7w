arr = (1..10).to_a
puts "array= #{arr.inspect}"
puts "sum= #{ arr.inject :+ }"

product = arr.reduce 56, :*
puts "56 * product=  #{product}"

largest = arr.shuffle.inject {|largest, e| e > largest ? e : largest}
puts "largest= #{largest}"
