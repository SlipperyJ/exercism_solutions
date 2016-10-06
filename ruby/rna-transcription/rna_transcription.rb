class Complement

  RNA_COMPLEMENTS = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(nucleotide)
    is_valid_dna?(nucleotide) ? convert_dna_to_rna(nucleotide) : ""
  end

  def self.is_valid_dna?(nucleotide)
    nucleotide.split("").all? { |char| RNA_COMPLEMENTS.keys.include? char }
  end

  def self.convert_dna_to_rna(nucleotide)
    nucleotide.gsub(/[CGTA]/, RNA_COMPLEMENTS)
  end
end

module BookKeeping
  VERSION = 4
end
