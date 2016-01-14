require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'twisted_sum'

class TwistedSumTest < Minitest::Test

  def test_sum_of_5_is_15
    assert_equal 15, TwistedSum.new(5).calculate
  end

  def test_sum_of_10_is_46
    assert_equal 46, TwistedSum.new(10).calculate
  end

  def test_sum_of_11_is_48
    skip
    assert_equal 48, TwistedSum.new(11).calculate
  end

  def test_sum_of_12_is_51
    skip
    assert_equal 51, TwistedSum.new(12).calculate
  end

  def test_error_msg_for_negative_numbers
    skip
    assert_equal 'Error. Your input must be a positive number.', TwistedSum.new(-1).calculate
  end
end
