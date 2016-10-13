class Squares
  def initialize(number)
    @number = number
    @number_range = number_range_to_array(number)
  end

  def square_of_sum
    @number_range.reduce(:+)**2
  end

  def sum_of_squares
    @number_range.map{|x| x**2}.reduce(:+)
  end

  def number_range_to_array(number)
    (1..@number).to_a
  end
end
