class Raindrops

  def self.convert(number)

    return_product = ""

    return_product += "Pling" if divisors_of(number).include?(3)
    return_product += "Plang" if divisors_of(number).include?(5)
    return_product += "Plong" if divisors_of(number).include?(7)

    return_product == "" ? number.to_s : return_product
  end

  def self.divisors_of(number)
    (1..number).select { |n| number % n == 0}
  end
end

module BookKeeping
  VERSION = 4
end