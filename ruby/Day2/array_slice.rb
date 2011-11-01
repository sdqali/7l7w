arr = (1..16).to_a.shuffle

arr.each_slice(4) do |slice|
  puts slice.inspect
end
