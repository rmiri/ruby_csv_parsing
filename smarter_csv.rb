require 'smarter_csv'

IntegerConverter = Object.new

def IntegerConverter.convert(value)
    Integer(value)
end

table = SmarterCSV.process('test.csv', value_converters: { id: IntegerConverter })

