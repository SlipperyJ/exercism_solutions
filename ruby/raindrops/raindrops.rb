class Raindrops
  # number.to_i.prime_division.flatten.include?(3)
  def self.convert(number)

   if divisors_of(number).include?(3)
     "Pling"
   elsif divisors_of(number).include?(5)
     "Plang"
   elsif divisors_of(number).include?(7)
     "Plong"
   else
     number.to_s
   end
  end

  def self.divisors_of(number)
    (1..number).select { |n| number % n == 0}
  end
end