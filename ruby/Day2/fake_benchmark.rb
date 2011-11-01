class FakeBenchmark
  def self.measure &block
    start = Time.now
    yield
    Time.now - start
  end
end

str = FakeBenchmark.measure do
  10_000_000.times do
    "test"
  end
end

sym = FakeBenchmark.measure do
  10_000_000.times do
    :test
  end
end

puts "String: " + str.to_s
puts "Symbol: " + sym.to_s
