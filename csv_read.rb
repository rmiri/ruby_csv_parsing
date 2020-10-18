require 'csv'
CSV::Converters[:symbol] = ->(value) { value.to_sym rescue value }

table = CSV.parse(File.read('test.csv'), headers: true)


print table