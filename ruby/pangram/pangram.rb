class Pangram

  ALPHABET = [*('a'..'z')]

  def self.is_pangram?(str)
    str.downcase!
    ALPHABET.all? { |letter| str.include?(letter) }
  end
end

module BookKeeping
  VERSION = 2
end
