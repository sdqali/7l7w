module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    attr_accessor :headers, :csv_contents

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @csv_contents << CsvRow.new(@headers, row.chomp.split(", "))
      end
    end

    def initialize
      read
    end

    def each &block
      @csv_contents.each &block
    end
  end
end

class CsvRow
  def initialize headers, row
    @data = Hash[headers.zip(row)]
  end

  def method_missing name, *args
    @data[name.to_s]
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each do |row|
  puts row.one
  puts row.foobar
end
