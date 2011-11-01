h = {:foo => "foo", :bar => "bar"}
g = h.to_a
puts h == Hash[g]
