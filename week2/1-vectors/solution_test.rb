require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_the_truth
    assert true
  end

  def test_addition
    answer = Vector2D.new(4, 6)
    first = Vector2D.new(1, 2)
    second = Vector2D.new(3, 4)
    result = first + second
    assert_equal(answer, result)
  end

  def test_subtraction
    answer = Vector2D.new(5, 2)
    first = Vector2D.new(8, 6)
    second = Vector2D.new(3, 4)
    result = first - second
    assert_equal(answer, result)
  end

  def test_multiplication
    answer = Vector2D.new(9, 8)
    first = Vector2D.new(3, 2)
    second = Vector2D.new(3, 4)
    result = first * second
    assert_equal(answer, result)
  end

  def test_addition
    answer = Vector2D.new(0.25, 0.5)
    first = Vector2D.new(1, 2)
    second = Vector2D.new(4, 4)
    result = first / second
    assert_equal(answer, result)
  end
end