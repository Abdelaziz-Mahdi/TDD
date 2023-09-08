class Solver
  def initialize(input)
    @input = input
  end

  def factorial
    if @input.negative?
      raise ArgumentError
    elsif @input.zero?
      1
    else
      (1..@input).inject(:*)
    end
  end

  def reverse
    @input.reverse
  end

  def fizzbuzz
    if (@input % 15).zero?
      'fizzbuzz'
    elsif (@input % 3).zero?
      'fizz'
    elsif (@input % 5).zero?
      'buzz'
    else
      @input.to_s
    end
  end
end
