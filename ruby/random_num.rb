puts "Enter a number between 0 and 9:"
actual = gets.to_i
expected = rand 10
if actual == expected
  puts "Your guess is right"
else
  puts "Your guess is wrong"
end
