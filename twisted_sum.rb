class TwistedSum
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def calculate
    return 'Your input must be a positive number.' if number.negative?
    return 0 if number.zero?

    (1..number).to_a.map do |number|
      number < 10 ?  number : sum_for_every_digit(number)
    end.inject(:+)
  end

  private

  def sum_for_every_digit(number)
    number.to_s.chars.map(&:to_i).inject(:+)
  end
end
