class Raindrops

  def self.convert(number)

    return_product = ""

    return_product += "Pling" if divisors_of_include?(number, 3)
    return_product += "Plang" if divisors_of_include?(number, 5)
    return_product += "Plong" if divisors_of_include?(number, 7)

    return_product == "" ? number.to_s : return_product
  end

  def self.divisors_of_include?(number, factor)
    (1..number).select { |n| number % n == 0}.include?(factor)
  end
end

module BookKeeping
  VERSION = 3
end