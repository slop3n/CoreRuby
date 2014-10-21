require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_the_truth
    assert true
  end

  def test_histogram
    answer = { 'a' => 3, 'b' => 1, 'r' => 1, 'c' => 1 }
    assert_equal(answer, histogram('abraca'))
  end

  def test_prime
    assert prime?(7)
    assert prime?(10) == false
  end

  def test_ordinal
    assert ordinal(10) == '10th'
  end

  def test_palindome
    assert palindrome?('qweeewq')
    assert palindrome?('qweeewqw') == false
  end

  def test_anagram?
    assert anagram?('silent', 'listen')
    assert anagram?('qwerty', 'ytrewq') == false
  end

  def test_remove_suffix
    assert_equal('Ladies Night', remove_suffix('Ladies Night Out', 'Out'))
  end

  def test_digits
    assert_equal([1, 2, 3, 4, 5, 6], digits(123_456))
  end

  def test_fizzbuzz
    assert_equal([:fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizzbuzz], 
                 fizzbuzz(6..15))
  end
end
