class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..@number).reduce(:+)**2
  end
end
