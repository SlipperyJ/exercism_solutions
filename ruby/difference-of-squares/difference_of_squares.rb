class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..@number).inject(0) { |sum, num| sum + num}**2
  end

  def sum_of_square

  end

end
