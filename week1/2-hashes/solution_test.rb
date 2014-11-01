require 'minitest/autorun'

require_relative 'solution'

class HashTest < Minitest::Test
  def test_the_truth
    assert true
  end

  def test_pick
    answer = { a: 1, b: 2 }
    assert_equal(answer, { a: 1, b: 2, c: 3 }.pick(:a, :b))
  end

  def test_except
    answer = { a: 1, b: 2 }
    assert_equal(answer, { a: 1, b: 2, d: nil }.except(:d))
  end

  def test_compact_values
    answer = { a: 1, b: 2 }
    assert_equal(answer, { a: 1, b: 2, c: false, d: nil }.compact_values)
  end

  def test_defaults
    answer = { a: 1, b: 2, c: 3 }
    assert_equal(answer, { a: 1, b: 2 }.defaults(a: 4, c: 3))
  end
end
