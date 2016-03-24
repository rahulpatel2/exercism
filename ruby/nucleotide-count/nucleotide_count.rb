# Program For Nucleotide Count in Ruby
class Nucleotide
  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError if dna =~ /[^ATCG]/
    new(dna)
  end

  def count(dna_char)
    @dna.count dna_char
  end

  def histogram
    {
      'A' => count('A'),
      'T' => count('T'),
      'C' => count('C'),
      'G' => count('G')
    }
  end
end
