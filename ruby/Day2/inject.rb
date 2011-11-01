arr = (1..10).to_a
puts "array= #{arr.inspect}"
puts "sum= #{ arr.inject :+ }"
puts "56 * product=  #{ arr.reduce :* }"
puts "largest= #{ arr.shuffle.inject {|largest, e| e > largest ? e : largest} }"
