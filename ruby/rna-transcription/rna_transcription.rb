# Program to DAN TO RNA Conversion
class Complement
  VERSION = 3
  def self.of_dna(rna)
    rna_array = Array['G', 'C', 'T', 'A']
    dna_array = Array['C', 'G', 'A', 'U']
    (0..rna.length - 1).each do |i|
      raise ArgumentError unless rna_array.include?(rna[i])
      index = rna_array.index(rna[i])
      rna[i] = dna_array[index]
    end
    rna
  end
end
