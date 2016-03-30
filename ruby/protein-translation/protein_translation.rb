# Protein Translation in Ruby
class Translation
  PROTEIN = { 'Methionine' => %w(AUG), 'Phenylalanine' => %w(UUU UUC),
              'Leucine' => %w(UUA UUG), 'Serine' => %w(UCU UCC UCA UCG),
              'Tyrosine' => %w(UAU UAC), 'Cysteine' => %w(UGU UGC),
              'Tryptophan' => %w(UGG), 'STOP' => %w(UAA UAG UGA)
            }.freeze

  def self.of_codon(codon)
    PROTEIN.each do |protein_name, codon_name|
      return protein_name if codon_name.include?(codon)
    end
    raise InvalidCodonError
  end

  def self.of_rna(str)
    strand = str.scan(/.{1,3}/)
    proteins = []
    strand.each do |codon|
      proteins << of_codon(codon) if of_codon(codon) != 'STOP'
      break if of_codon(codon) == 'STOP'
    end
    proteins
  end
end
class InvalidCodonError < StandardError
end
