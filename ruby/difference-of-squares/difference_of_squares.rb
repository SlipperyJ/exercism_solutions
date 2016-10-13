class Squares
  def initialize(number)
    @number_range = number_range_to_array(number)
  end

  def square_of_sum
    @number_range.reduce(:+)**2
  end

  def sum_of_squares
    @number_range.map{|x| x**2}.reduce(:+)
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end

  private
    def number_range_to_array(number)
      number == 0 ? [0] : (1..number).to_a
    end
end

module BookKeeping
  VERSION = 3
end
