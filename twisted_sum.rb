class TwistedSum
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def calculate
    (1..number).to_a.map do |number|
      if number < 10
        number
      else
        sum_for_every_digit(number)
      end
    end.inject(:+)
  end

  protected

  def sum_for_every_digit(number)
    number.to_s.chars.map(&:to_i).inject(:+)
  end
end
