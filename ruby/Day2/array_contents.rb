arr = (1..16).to_a

i = 0
arr.each do |e|
  if i % 4 == 0
    puts arr[i..i+3].inspect
  end
  i = i + 1
end
