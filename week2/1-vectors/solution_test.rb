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

  def test_normalized_vector
    vector = Vector.new(0.25,0.25,0.25,0.25).normalize
    second_vector = Vector.new(1,1,1,1).normalize
    assert_equal(vector, second_vector)
  end

  def test_set_index
    vector = Vector.new(1,2,3,4)
    vector[1] = 5
    assert_equal(5, vector[1])
  end

  def test_equality
    vector = Vector.new(1,2,3,4,5)
    second_vector = Vector.new(1,2,3,4,5)
    assert_equal(vector, second_vector)
  end

  def test_dimension
    vector = Vector.new(1,2,3,4,5,6,7)
    assert_equal(7, vector.dimension)
  end

  def test_lenght
    answer = 5.4772
    vector = Vector.new(1,2,3,4)
    assert_equal(answer, (vector.length).round(4))
  end
end

