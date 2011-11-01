File.open("rubbish", "w") do |f|
  f.write "rubbish"
end

f = File.open "foo", "w"
f.write "foo"
f.close

# The advantage with using blocks is that File object
# will be closed when the block terminates
