class Complement

  RNA_complement_logic = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(nucleotide)
    nucleotide.gsub(/[CGTA]/, RNA_complement_logic )
  end
end