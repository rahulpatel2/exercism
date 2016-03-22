# Etl in Ruby
class ETL
  def self.transform(old)
    output = {}
    old.each do |key, value|
      (0..value.length - 1).each do |i|
        output[value[i].downcase] = key
      end
    end
    output
  end
end
